#!/bin/sh

rm -f ecut.out etot_vs_ecut
touch etot_vs_ecut

dual=12
for ecutwfc in 10 12 15 18 20 22 25 28 30 32 35 38 40 42 45 48 50 52 55 58 60 62 65 68 70 ; do
	ecutrho=`echo $ecutwfc '*' $dual | bc -l`
	cat > ecut.in << EOF
 &control
    calculation = 'scf'
    prefix='silicon',
    pseudo_dir = './handson_pwscf/pseudo',
    outdir='./output'
 /
 &system
    ibrav=  2,
    celldm(1) =10.26,
    nat=  2,
    ntyp= 1,
    ecutwfc = $ecutwfc,
    ecutrho = $ecutrho,
    nbnd = 8,
    !occupations = 'smearing',
    !smearing = 'gaussian',
    !degauss = 0.005
 /
 &electrons
    conv_thr = 1e-8
 /
ATOMIC_SPECIES
 Si  28.086  Si.pz-vbc.UPF
ATOMIC_POSITIONS alat
 Si 0.00 0.00 0.00
 Si 0.25 0.25 0.25
K_POINTS automatic
  4 4 4 1 1 1

EOF

pw.x -in ecut.in > ecut.out

etot=`grep -e ! ecut.out | awk '{print $(NF-1)}'`
echo $ecutwfc $etot >> etot_vs_ecut.

done
