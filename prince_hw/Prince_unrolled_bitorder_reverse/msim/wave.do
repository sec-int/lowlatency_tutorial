onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -radix hexadecimal /pcore_tb/inp
add wave -noupdate -radix hexadecimal /pcore_tb/key
add wave -noupdate -radix hexadecimal /pcore_tb/dut/k0
add wave -noupdate -radix hexadecimal /pcore_tb/dut/k0p
add wave -noupdate -radix hexadecimal /pcore_tb/dut/k1
add wave -noupdate -radix binary /pcore_tb/d
add wave -noupdate -divider Outputs
add wave -noupdate -radix hexadecimal /pcore_tb/dut/alpha
add wave -noupdate -radix hexadecimal -childformat {{{/pcore_tb/dut/rc[0]} -radix hexadecimal} {{/pcore_tb/dut/rc[1]} -radix hexadecimal} {{/pcore_tb/dut/rc[2]} -radix hexadecimal} {{/pcore_tb/dut/rc[3]} -radix hexadecimal} {{/pcore_tb/dut/rc[4]} -radix hexadecimal}} -expand -subitemconfig {{/pcore_tb/dut/rc[0]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/rc[1]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/rc[2]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/rc[3]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/rc[4]} {-height 15 -radix hexadecimal}} /pcore_tb/dut/rc
add wave -noupdate -radix hexadecimal /pcore_tb/dut/rndi
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[0]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[0]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[0]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[0]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sxi[0]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[1]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[1]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[1]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[1]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sxi[1]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[2]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[2]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[2]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[2]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sxi[2]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[3]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[3]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[3]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[3]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sxi[3]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[4]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[4]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[4]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[4]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sxi[4]}
add wave -noupdate -radix hexadecimal -childformat {{{/pcore_tb/dut/sm[0]} -radix hexadecimal} {{/pcore_tb/dut/sm[1]} -radix hexadecimal} {{/pcore_tb/dut/sm[2]} -radix hexadecimal} {{/pcore_tb/dut/sm[3]} -radix hexadecimal} {{/pcore_tb/dut/sm[4]} -radix hexadecimal} {{/pcore_tb/dut/sm[5]} -radix hexadecimal} {{/pcore_tb/dut/sm[6]} -radix hexadecimal} {{/pcore_tb/dut/sm[7]} -radix hexadecimal} {{/pcore_tb/dut/sm[8]} -radix hexadecimal} {{/pcore_tb/dut/sm[9]} -radix hexadecimal} {{/pcore_tb/dut/sm[10]} -radix hexadecimal} {{/pcore_tb/dut/sm[11]} -radix hexadecimal} {{/pcore_tb/dut/sm[12]} -radix hexadecimal} {{/pcore_tb/dut/sm[13]} -radix hexadecimal} {{/pcore_tb/dut/sm[14]} -radix hexadecimal} {{/pcore_tb/dut/sm[15]} -radix hexadecimal} {{/pcore_tb/dut/sm[16]} -radix hexadecimal} {{/pcore_tb/dut/sm[17]} -radix hexadecimal} {{/pcore_tb/dut/sm[18]} -radix hexadecimal} {{/pcore_tb/dut/sm[19]} -radix hexadecimal} {{/pcore_tb/dut/sm[20]} -radix hexadecimal} {{/pcore_tb/dut/sm[21]} -radix hexadecimal} {{/pcore_tb/dut/sm[22]} -radix hexadecimal} {{/pcore_tb/dut/sm[23]} -radix hexadecimal} {{/pcore_tb/dut/sm[24]} -radix hexadecimal} {{/pcore_tb/dut/sm[25]} -radix hexadecimal} {{/pcore_tb/dut/sm[26]} -radix hexadecimal} {{/pcore_tb/dut/sm[27]} -radix hexadecimal} {{/pcore_tb/dut/sm[28]} -radix hexadecimal} {{/pcore_tb/dut/sm[29]} -radix hexadecimal} {{/pcore_tb/dut/sm[30]} -radix hexadecimal} {{/pcore_tb/dut/sm[31]} -radix hexadecimal} {{/pcore_tb/dut/sm[32]} -radix hexadecimal} {{/pcore_tb/dut/sm[33]} -radix hexadecimal} {{/pcore_tb/dut/sm[34]} -radix hexadecimal} {{/pcore_tb/dut/sm[35]} -radix hexadecimal} {{/pcore_tb/dut/sm[36]} -radix hexadecimal} {{/pcore_tb/dut/sm[37]} -radix hexadecimal} {{/pcore_tb/dut/sm[38]} -radix hexadecimal} {{/pcore_tb/dut/sm[39]} -radix hexadecimal} {{/pcore_tb/dut/sm[40]} -radix hexadecimal} {{/pcore_tb/dut/sm[41]} -radix hexadecimal} {{/pcore_tb/dut/sm[42]} -radix hexadecimal} {{/pcore_tb/dut/sm[43]} -radix hexadecimal} {{/pcore_tb/dut/sm[44]} -radix hexadecimal} {{/pcore_tb/dut/sm[45]} -radix hexadecimal} {{/pcore_tb/dut/sm[46]} -radix hexadecimal} {{/pcore_tb/dut/sm[47]} -radix hexadecimal} {{/pcore_tb/dut/sm[48]} -radix hexadecimal} {{/pcore_tb/dut/sm[49]} -radix hexadecimal} {{/pcore_tb/dut/sm[50]} -radix hexadecimal} {{/pcore_tb/dut/sm[51]} -radix hexadecimal} {{/pcore_tb/dut/sm[52]} -radix hexadecimal} {{/pcore_tb/dut/sm[53]} -radix hexadecimal} {{/pcore_tb/dut/sm[54]} -radix hexadecimal} {{/pcore_tb/dut/sm[55]} -radix hexadecimal} {{/pcore_tb/dut/sm[56]} -radix hexadecimal} {{/pcore_tb/dut/sm[57]} -radix hexadecimal} {{/pcore_tb/dut/sm[58]} -radix hexadecimal} {{/pcore_tb/dut/sm[59]} -radix hexadecimal} {{/pcore_tb/dut/sm[60]} -radix hexadecimal} {{/pcore_tb/dut/sm[61]} -radix hexadecimal} {{/pcore_tb/dut/sm[62]} -radix hexadecimal} {{/pcore_tb/dut/sm[63]} -radix hexadecimal}} -subitemconfig {{/pcore_tb/dut/sm[0]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[1]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[2]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[3]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[4]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[5]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[6]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[7]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[8]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[9]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[10]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[11]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[12]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[13]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[14]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[15]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[16]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[17]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[18]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[19]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[20]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[21]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[22]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[23]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[24]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[25]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[26]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[27]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[28]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[29]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[30]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[31]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[32]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[33]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[34]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[35]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[36]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[37]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[38]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[39]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[40]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[41]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[42]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[43]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[44]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[45]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[46]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[47]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[48]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[49]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[50]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[51]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[52]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[53]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[54]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[55]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[56]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[57]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[58]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[59]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[60]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[61]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[62]} {-height 15 -radix hexadecimal} {/pcore_tb/dut/sm[63]} {-height 15 -radix hexadecimal}} /pcore_tb/dut/sm
add wave -noupdate -radix hexadecimal /pcore_tb/dut/mxm
add wave -noupdate -radix hexadecimal /pcore_tb/dut/irndi
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[5]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[5]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[5]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[5]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[6]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[6]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[6]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[6]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[7]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[7]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[7]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[7]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[8]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[8]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[8]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[8]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxi[9]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxr[9]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/mxo[9]}
add wave -noupdate -radix hexadecimal {/pcore_tb/dut/sx[9]}
add wave -noupdate -radix hexadecimal -childformat {{{/pcore_tb/out[0]} -radix hexadecimal} {{/pcore_tb/out[1]} -radix hexadecimal} {{/pcore_tb/out[2]} -radix hexadecimal} {{/pcore_tb/out[3]} -radix hexadecimal} {{/pcore_tb/out[4]} -radix hexadecimal} {{/pcore_tb/out[5]} -radix hexadecimal} {{/pcore_tb/out[6]} -radix hexadecimal} {{/pcore_tb/out[7]} -radix hexadecimal} {{/pcore_tb/out[8]} -radix hexadecimal} {{/pcore_tb/out[9]} -radix hexadecimal} {{/pcore_tb/out[10]} -radix hexadecimal} {{/pcore_tb/out[11]} -radix hexadecimal} {{/pcore_tb/out[12]} -radix hexadecimal} {{/pcore_tb/out[13]} -radix hexadecimal} {{/pcore_tb/out[14]} -radix hexadecimal} {{/pcore_tb/out[15]} -radix hexadecimal} {{/pcore_tb/out[16]} -radix hexadecimal} {{/pcore_tb/out[17]} -radix hexadecimal} {{/pcore_tb/out[18]} -radix hexadecimal} {{/pcore_tb/out[19]} -radix hexadecimal} {{/pcore_tb/out[20]} -radix hexadecimal} {{/pcore_tb/out[21]} -radix hexadecimal} {{/pcore_tb/out[22]} -radix hexadecimal} {{/pcore_tb/out[23]} -radix hexadecimal} {{/pcore_tb/out[24]} -radix hexadecimal} {{/pcore_tb/out[25]} -radix hexadecimal} {{/pcore_tb/out[26]} -radix hexadecimal} {{/pcore_tb/out[27]} -radix hexadecimal} {{/pcore_tb/out[28]} -radix hexadecimal} {{/pcore_tb/out[29]} -radix hexadecimal} {{/pcore_tb/out[30]} -radix hexadecimal} {{/pcore_tb/out[31]} -radix hexadecimal} {{/pcore_tb/out[32]} -radix hexadecimal} {{/pcore_tb/out[33]} -radix hexadecimal} {{/pcore_tb/out[34]} -radix hexadecimal} {{/pcore_tb/out[35]} -radix hexadecimal} {{/pcore_tb/out[36]} -radix hexadecimal} {{/pcore_tb/out[37]} -radix hexadecimal} {{/pcore_tb/out[38]} -radix hexadecimal} {{/pcore_tb/out[39]} -radix hexadecimal} {{/pcore_tb/out[40]} -radix hexadecimal} {{/pcore_tb/out[41]} -radix hexadecimal} {{/pcore_tb/out[42]} -radix hexadecimal} {{/pcore_tb/out[43]} -radix hexadecimal} {{/pcore_tb/out[44]} -radix hexadecimal} {{/pcore_tb/out[45]} -radix hexadecimal} {{/pcore_tb/out[46]} -radix hexadecimal} {{/pcore_tb/out[47]} -radix hexadecimal} {{/pcore_tb/out[48]} -radix hexadecimal} {{/pcore_tb/out[49]} -radix hexadecimal} {{/pcore_tb/out[50]} -radix hexadecimal} {{/pcore_tb/out[51]} -radix hexadecimal} {{/pcore_tb/out[52]} -radix hexadecimal} {{/pcore_tb/out[53]} -radix hexadecimal} {{/pcore_tb/out[54]} -radix hexadecimal} {{/pcore_tb/out[55]} -radix hexadecimal} {{/pcore_tb/out[56]} -radix hexadecimal} {{/pcore_tb/out[57]} -radix hexadecimal} {{/pcore_tb/out[58]} -radix hexadecimal} {{/pcore_tb/out[59]} -radix hexadecimal} {{/pcore_tb/out[60]} -radix hexadecimal} {{/pcore_tb/out[61]} -radix hexadecimal} {{/pcore_tb/out[62]} -radix hexadecimal} {{/pcore_tb/out[63]} -radix hexadecimal}} -subitemconfig {{/pcore_tb/out[0]} {-height 15 -radix hexadecimal} {/pcore_tb/out[1]} {-height 15 -radix hexadecimal} {/pcore_tb/out[2]} {-height 15 -radix hexadecimal} {/pcore_tb/out[3]} {-height 15 -radix hexadecimal} {/pcore_tb/out[4]} {-height 15 -radix hexadecimal} {/pcore_tb/out[5]} {-height 15 -radix hexadecimal} {/pcore_tb/out[6]} {-height 15 -radix hexadecimal} {/pcore_tb/out[7]} {-height 15 -radix hexadecimal} {/pcore_tb/out[8]} {-height 15 -radix hexadecimal} {/pcore_tb/out[9]} {-height 15 -radix hexadecimal} {/pcore_tb/out[10]} {-height 15 -radix hexadecimal} {/pcore_tb/out[11]} {-height 15 -radix hexadecimal} {/pcore_tb/out[12]} {-height 15 -radix hexadecimal} {/pcore_tb/out[13]} {-height 15 -radix hexadecimal} {/pcore_tb/out[14]} {-height 15 -radix hexadecimal} {/pcore_tb/out[15]} {-height 15 -radix hexadecimal} {/pcore_tb/out[16]} {-height 15 -radix hexadecimal} {/pcore_tb/out[17]} {-height 15 -radix hexadecimal} {/pcore_tb/out[18]} {-height 15 -radix hexadecimal} {/pcore_tb/out[19]} {-height 15 -radix hexadecimal} {/pcore_tb/out[20]} {-height 15 -radix hexadecimal} {/pcore_tb/out[21]} {-height 15 -radix hexadecimal} {/pcore_tb/out[22]} {-height 15 -radix hexadecimal} {/pcore_tb/out[23]} {-height 15 -radix hexadecimal} {/pcore_tb/out[24]} {-height 15 -radix hexadecimal} {/pcore_tb/out[25]} {-height 15 -radix hexadecimal} {/pcore_tb/out[26]} {-height 15 -radix hexadecimal} {/pcore_tb/out[27]} {-height 15 -radix hexadecimal} {/pcore_tb/out[28]} {-height 15 -radix hexadecimal} {/pcore_tb/out[29]} {-height 15 -radix hexadecimal} {/pcore_tb/out[30]} {-height 15 -radix hexadecimal} {/pcore_tb/out[31]} {-height 15 -radix hexadecimal} {/pcore_tb/out[32]} {-height 15 -radix hexadecimal} {/pcore_tb/out[33]} {-height 15 -radix hexadecimal} {/pcore_tb/out[34]} {-height 15 -radix hexadecimal} {/pcore_tb/out[35]} {-height 15 -radix hexadecimal} {/pcore_tb/out[36]} {-height 15 -radix hexadecimal} {/pcore_tb/out[37]} {-height 15 -radix hexadecimal} {/pcore_tb/out[38]} {-height 15 -radix hexadecimal} {/pcore_tb/out[39]} {-height 15 -radix hexadecimal} {/pcore_tb/out[40]} {-height 15 -radix hexadecimal} {/pcore_tb/out[41]} {-height 15 -radix hexadecimal} {/pcore_tb/out[42]} {-height 15 -radix hexadecimal} {/pcore_tb/out[43]} {-height 15 -radix hexadecimal} {/pcore_tb/out[44]} {-height 15 -radix hexadecimal} {/pcore_tb/out[45]} {-height 15 -radix hexadecimal} {/pcore_tb/out[46]} {-height 15 -radix hexadecimal} {/pcore_tb/out[47]} {-height 15 -radix hexadecimal} {/pcore_tb/out[48]} {-height 15 -radix hexadecimal} {/pcore_tb/out[49]} {-height 15 -radix hexadecimal} {/pcore_tb/out[50]} {-height 15 -radix hexadecimal} {/pcore_tb/out[51]} {-height 15 -radix hexadecimal} {/pcore_tb/out[52]} {-height 15 -radix hexadecimal} {/pcore_tb/out[53]} {-height 15 -radix hexadecimal} {/pcore_tb/out[54]} {-height 15 -radix hexadecimal} {/pcore_tb/out[55]} {-height 15 -radix hexadecimal} {/pcore_tb/out[56]} {-height 15 -radix hexadecimal} {/pcore_tb/out[57]} {-height 15 -radix hexadecimal} {/pcore_tb/out[58]} {-height 15 -radix hexadecimal} {/pcore_tb/out[59]} {-height 15 -radix hexadecimal} {/pcore_tb/out[60]} {-height 15 -radix hexadecimal} {/pcore_tb/out[61]} {-height 15 -radix hexadecimal} {/pcore_tb/out[62]} {-height 15 -radix hexadecimal} {/pcore_tb/out[63]} {-height 15 -radix hexadecimal}} /pcore_tb/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {78 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 235
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {527 ns}