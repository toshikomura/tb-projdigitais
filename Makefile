all:
	ghdl -a --ieee=synopsys -fexplicit MRstd.vhd 
	ghdl -a --ieee=synopsys -fexplicit MRstd_tb.vhd 
	ghdl -e --ieee=synopsys -fexplicit MRstd_tb
	./mrstd_tb --stop-time=1000000ns --vcd=mrstd.vcd

clean:
	rm -f mrstd.vcd *.o *.cf mrstd_tb
