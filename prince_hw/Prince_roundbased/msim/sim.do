vlib  work
vmap  work  work
vlog  -work  work  ../vlog/*.v
vsim  -voptargs="+acc"  -t ns  work.pcore_tb
do  wave.do
run  -all