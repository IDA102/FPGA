vlog -work work E:/QUARTUS/COUNTER_LPM/simulation/modelsim/Waveform_1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.COUNTER_LPM_vlg_vec_tst
onerror {resume}
add wave {COUNTER_LPM_vlg_vec_tst/i1/CLC}
add wave {COUNTER_LPM_vlg_vec_tst/i1/CLS}
add wave {COUNTER_LPM_vlg_vec_tst/i1/COUNT_ENABLE}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT[4]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT[3]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT[2]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT[1]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT[0]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET[4]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET[3]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET[2]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET[1]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/SET[0]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR[4]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR[3]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR[2]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR[1]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/TR[0]}
add wave {COUNTER_LPM_vlg_vec_tst/i1/BLOCK_SET}
add wave {COUNTER_LPM_vlg_vec_tst/i1/OUT_AND}
add wave {COUNTER_LPM_vlg_vec_tst/i1/pin_name1}
run -all
