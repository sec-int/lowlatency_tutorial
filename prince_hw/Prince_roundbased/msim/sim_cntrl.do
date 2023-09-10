vlib  work
vmap  work  work
vlog  -work  work  ../vlog/*.v
vsim  -voptargs="+acc"  -t ns  work.cntrl_tb
do  wave_cntrl.do
run  -all