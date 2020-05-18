#!/bin/sh

rm -f ecut.out etot_vs_ecut
touch etot_vs_ecut

dual=10
for ecutwfc in 25 28 30 32 35 38 40 42 45 48 50 52 55 58 60 62 65 68 70 72 75 78 80 ; do
	ecutrho=`echo $ecutwfc '*' $dual | bc -l`
	cat > ecut.in << EOF
&control
   calculation = 'vc-relax' ,
   prefix = 'pwscf' ,
   outdir = './temp/' ,
   pseudo_dir = '/home/u16/abhishekkt/fp/krishna/calculations/pseudopotentials/' ,
   disk_io = 'none' ,
   etot_conv_thr = 1.0d-10 ,
   forc_conv_thr = 1.0d-5 ,
/
&system
   ibrav = 0 ,
   celldm(1) = 1.889725989 ,
   ecutwfc = $ecutwfc ,
   ecutrho = $ecutrho ,
   occupations = 'smearing' ,
   smearing = 'mv' ,
   degauss = 0.2 ,
   nat = 1 , 
   ntyp = 1 , 
/
&electrons
   conv_thr = 1.0d-10 ,
   diagonalization = 'david' ,
   mixing_mode = 'plain' ,
   startingpot = 'atomic' ,
   startingwfc = 'atomic+random' ,
   mixing_beta = 0.6 ,
/
&ions
   ion_dynamics = 'bfgs' ,
/
&cell
   cell_dynamics = 'bfgs' ,
   cell_factor = 2.0 ,
   press = 0.0 ,
   press_conv_thr = 1.0d-3 ,
/
CELL_PARAMETERS alat
1.758031500 -1.758031500 1.758031500
1.758031500 1.758031500 -1.758031500
-1.758031500 1.758031500 1.758031500
ATOMIC_SPECIES
  Nb 92.90638 Nb.pbe-spn-rrkjus_psl.1.0.0.UPF
ATOMIC_POSITIONS angstrom
  Nb 1.758031500 1.758031500 1.758031500
K_POINTS automatic
   10 10 10 0 0 0

EOF

pw.x -in ecut.in > ecut.out

etot=`grep -e ! ecut.out | awk '{print $(NF-1)}'`
echo $ecutwfc $etot >> etot_vs_ecut

done
