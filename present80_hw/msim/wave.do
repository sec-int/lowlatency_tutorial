onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -radix hexadecimal /present_tb/dut/inp
add wave -noupdate -radix hexadecimal /present_tb/dut/key
add wave -noupdate -radix hexadecimal /present_tb/dut/start
add wave -noupdate -divider Outputs
add wave -noupdate -radix hexadecimal /present_tb/dut/out
add wave -noupdate -radix hexadecimal /present_tb/dut/ready
add wave -noupdate -divider Others
add wave -noupdate -radix hexadecimal /present_tb/dut/r0
add wave -noupdate -radix hexadecimal /present_tb/dut/active
add wave -noupdate -radix unsigned /present_tb/dut/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {286 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 201
configure wave -valuecolwidth 104
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
WaveRestoreZoom {237 ns} {472 ns}
