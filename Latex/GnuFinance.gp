set label 1 "General financial graph" at graph 0.5, graph 0.9 center front
set label 2 "Courtesy of Architecture and Design" at graph 0.01, 0.07
set label 3 "  www.ArchitectureAndDesign.com" at graph 0.01, 0.03
set logscale y
set yrange [75:105]
set ytics (105, 100, 95, 90, 85, 80)
set xrange [50:253]
set grid
set lmargin 9
set rmargin 2
set format x ""
set xtics (66, 87, 109, 130, 151, 174, 193, 215, 235)
set terminal png size 2000,1500 enhanced font "Helvetica,20"
set output 'Finance.png'
set multiplot
set title "Change to the Kapital"
set size 1, 0.7
set origin 0, 0.3
set bmargin 0
set ylabel "Euro" offset 1
plot 'finance2.dat' using 0:3:3:($2>$5?$2:$5):($2>$5?$2:$5) notitle with candlesticks lt 3, \
'finance2.dat' using 0:($2<$5?$5:1/0):($2<$5?$5:1/0):($2<$5?$2:1/0):($2<$5?$2:1/0) notitle with candlesticks lt 2, \
'finance2.dat' using 0:($2>$5?$2:1/0):($2>$5?$2:1/0):($2>$5?$5:1/0):($2>$5?$5:1/0) notitle with candlesticks lt 1, \
'finance2.dat' using 0:($2<$5?$2:$5):($2<$5?$2:$5):4:4 notitle with candlesticks lt 3, \
'finance2.dat' using 0:9 notitle with lines lt 3, \
'finance2.dat' using 0:10 notitle with lines lt 1, \
'finance2.dat' using 0:11 notitle with lines lt 2, \
'finance2.dat' using 0:8 axes x1y2 notitle with lines lt 4
unset label 1
unset label 2
unset label 3
unset title
set bmargin
set format x
set size 1.0, 0.3
set origin 0.0, 0.0
set tmargin 0
unset logscale y
set autoscale y
set format y "%1.0f"
set ytics 500
set xtics ("4/15" 66, "5/15" 87, "6/15" 109, "7/15" 130, "8/15" 151, "9/15" 174, "10/15" 193, "11/15" 215, "12/15" 235)
set ylabel "volume (0000)" offset 1
plot 'finance2.dat' using 0:($6/10000) notitle with impulses lt 3, \
'finance2.dat' using 0:($7/10000) notitle with lines lt 1
unset multiplot
set output
