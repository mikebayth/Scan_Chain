transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Titto Thomas/Desktop/Scan_Chain/De0-Nano/Sequential/Counter/Counter.vhd}
vcom -93 -work work {C:/Users/Titto Thomas/Desktop/Scan_Chain/De0-Nano/Sequential/Counter/Count.vhd}
vcom -93 -work work {C:/Users/Titto Thomas/Desktop/Scan_Chain/De0-Nano/Sequential/Counter/scan_chain.vhd}
vcom -93 -work work {C:/Users/Titto Thomas/Desktop/Scan_Chain/De0-Nano/Sequential/Counter/scan_reg.vhd}

