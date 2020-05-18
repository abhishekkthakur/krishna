set xlabel "concentration"
set ylabel "energy"
set title "Fitted Energies"
plot [0:1] \
'mypredstr.file' u 1:3 t "predicted" w p pt 2, \
'fit.out' u 1:3 t  "known str" w p pt 1, \
'gs.out' u 1:3 t "known gs" w linesp lt 3
