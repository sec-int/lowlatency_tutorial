vlib work
vmap work work
vlog -work work ../vlog/*.v
vsim -voptargs="+acc" -t ns work.present_tb
do wave.do
run -all
