onerror {quit -f}
vlib work
vlog -work work Magic_Box.vo
vlog -work work Magic_Box.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.MAGIC_BOX_vlg_vec_tst
vcd file -direction Magic_Box.msim.vcd
vcd add -internal MAGIC_BOX_vlg_vec_tst/*
vcd add -internal MAGIC_BOX_vlg_vec_tst/i1/*
add wave /*
run -all
