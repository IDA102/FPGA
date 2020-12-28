transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/QUARTUS/UART {E:/QUARTUS/UART/altpll0.v}
vlog -vlog01compat -work work +incdir+E:/QUARTUS/UART/db {E:/QUARTUS/UART/db/altpll0_altpll2.v}
vlog -sv -work work +incdir+E:/QUARTUS/UART {E:/QUARTUS/UART/UART_transmitter.sv}
vlog -sv -work work +incdir+E:/QUARTUS/UART {E:/QUARTUS/UART/DEL.sv}
vlog -sv -work work +incdir+E:/QUARTUS/UART {E:/QUARTUS/UART/CONECT.sv}

vlog -sv -work work +incdir+E:/QUARTUS/UART/simulation/modelsim {E:/QUARTUS/UART/simulation/modelsim/tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  all_uart

add wave *
view structure
view signals
run -all
