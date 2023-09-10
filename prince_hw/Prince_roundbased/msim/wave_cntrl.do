onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -format Logic -radix binary /cntrl_tb/st
add wave -noupdate -divider Outputs
add wave -noupdate -format Logic /cntrl_tb/dut/act
add wave -noupdate -format Literal -radix binary -expand /cntrl_tb/s
add wave -noupdate -format Literal -radix unsigned /cntrl_tb/dut/cnt
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {19 ns} 0}
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
WaveRestoreZoom {0 ns} {473 ns}
