onerror {quit -f}
vlib work
vlog -work work UART_2.vo
vlog -work work UART_2.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.all_uart_vlg_vec_tst
vcd file -direction UART_2.msim.vcd
vcd add -internal all_uart_vlg_vec_tst/*
vcd add -internal all_uart_vlg_vec_tst/i1/*
add wave /*
run -all
