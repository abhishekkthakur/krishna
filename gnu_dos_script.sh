#
# Gnuplot version 4.1 demo of multiplot
# auto-layout capability
#
#
set terminal pngcairo size 450,400 enhanced font 'Verdana,14'
#set term postscript  color  "Helvetica" 30
#set size 1.0, 1.0
set termopt enhanced
set output 'Nd-U-As-dos.png'
#set boxwidth 0.8 absolute
#set style fill   solid 1.00 border
#set colorsequence classic
#set format y
#set multiplot layout 5, 1  
#set tmargin 0
set tmargin 1
set bmargin 3
set lmargin 6
set rmargin 1
set xrange [-8:5]
set yrange[-2:2]
set tics scale 1
set ytics add ("-4" -4, "-3" -3, "-2" -2,   "-1" -1,   "0" 0, "1" 1, "2" 2, "3" 3, "4" 4, "5" 5 0) #-4.5 1, -3.5 1, -2.5 1, \
# -1.5 1, 0.5 1, 1.5 1, 2.5 1, 3.5 1, 4.5 1 )
set xtics  
#set mytics 2
#show mytics
set arrow from 0,graph(0,0) to 0,graph(1,1)  nohead lt 0 linewidth 1
#set label "300" at 4,15
#set title "Plot 1"
set key autotitle column  samplen 2 #noenhanced
set key left bottom Left title
set key samplen 1
set key box
set key inside
set key reverse
#set key  column nobox samplen 1 noenhanced
#unset key
set xtics
set xlabel "E (eV)"
set ylabel "DOS (states/eV atom)"
#set xtics format " "
#set label " " at 1.5,20
set mxtics 2
set ytics 0.0, 5.0 1
set label "Nd-U-As" at -2,1
#set xrange [-8:8]
#set yrange[0:30]
#1 green line
set style line 1  lc rgb '#fec287'  lt 2 dashtype 3     #orange
set style line 2  lc rgb 'forest-green' lt 3 # green
set style line 3  lc rgb "#FF0055" lt 3 dashtype 3 # red
set style line 4 lc rgb '#FF00FF' lt 2  # magenta
set style line 5  lc rgb '#0000FF' lt 3 # blue

set style fill transparent solid 0.2
set object 1 rect from -5,0 to -3.8,5 fc lt -1 fs solid 0.15 noborder

plot 'dump1.txt'  using 1:4 w l  ls 2  lw 3 notitle, 'dump1.txt' using 1:5 w l  ls 2 lw 3 title 'As-p' , \
  'dump1.txt' using 1:20 w l  ls 5  lw 3  notitle, 'dump1.txt' using 1:21 w l  ls 5 lw 3 title "Nd-d", \
 'dump1.txt' using 1:22 w l  ls 4 lw 3  notitle, 'dump1.txt' using 1:23 w l ls 4 lw 3 title "Nd-f" #,\
#  'dump1.txt' using 1:12 w l  ls 1 lw 3  notitle, 'dump1.txt' using 1:13 w l ls 1 lw 3 title "U-d" , \
# 'dump1.txt' using 1:14 w l  ls 3 lw 3  notitle, 'dump1.txt' using 1:15 w l ls 3 lw 3 title "U-f"
#
#
# 'dump1.txt'  using 1:12 w l  ls 1  lw 3 notitle, 'dump1.txt' using 1:13 w l  ls 1 lw 3 title 'U-d', \
# 'dump1.txt' using 1:14 w l  ls 3 lw 3  notitle, 'dump1.txt' using 1:15 w l  ls 3 lw 3 title "U-f", \
set tmargin 0
#set title "Plot 2"
#unset key
#unset label
#set label "ICdO(1:4)" at 1.5,20
#set ylabel "Inverse participation ratio"

#
#unset label

#unset ylabel

#
#unset label
#set label "IO" at 1.5,20
#set xlabel " Energy (eV)"
#set format x
#set mxtics 2
#set  style arrow   dashed

#plot 'ipr-IO-130.dat' using 1:2 lt -1  pt 6 ps 0.5
unset multiplot

#
#
#
