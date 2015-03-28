transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/titto/Desktop/De0-Nano/Scan_Reg.vhd}
vcom -93 -work work {/home/titto/Desktop/De0-Nano/Scan_Chain.vhd}
vcom -93 -work work {/home/titto/Desktop/De0-Nano/Counter.vhd}
vcom -93 -work work {/home/titto/Desktop/De0-Nano/Adder.vhd}

