onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -format Logic -radix binary /pcore_tb/clk
add wave -noupdate -format Logic -radix binary /pcore_tb/st
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/inp
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/key
add wave -noupdate -format Logic -radix binary /pcore_tb/d
add wave -noupdate -divider Outputs
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/out
add wave -noupdate -divider Internal
add wave -noupdate -format Literal -expand /pcore_tb/dut/s
add wave -noupdate -format Literal -radix unsigned /pcore_tb/dut/cnt
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/kr
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/sr
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/rc
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/irclk
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/rndi
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/sx
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/krcd
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/srinv
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/mxi
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/mxo
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/srm
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/krce
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/isx
add wave -noupdate -format Literal -radix hexadecimal /pcore_tb/dut/rout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {41 ns} 0}
configure wave -namecolwidth 235
configure wave -valuecolwidth 105
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
WaveRestoreZoom {0 ns} {256 ns}
