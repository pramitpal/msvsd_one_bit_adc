# ==============================================================================
# Run PLL design
# ==============================================================================



sky130hd_pll_verilog:
	python3 tools/PLL-gen.py --specfile test.json --outputDir ./work --platform sky130hd --mode verilog

sky130hd_pll:
	python3 tools/PLL-gen.py --specfile test.json --outputDir ./work --platform sky130hd --mode macro
sky130hd_temp_full:
	# add --pex to also run pex simulations
	python3 tools/PLL-gen.py --specfile test.json --outputDir ./work --platform sky130hd --mode full --prepex

clean:
	rm -f search_result.csv
	rm -rf work
	rm -rf tools/*.pyc tools/__pycache__/
	cd flow && make clean_all
	cd simulations && rm -rf run

banner:
	@@echo "=============================================================="
	@@echo "   ___  _____ ______ _   _ _____  _     ____   ___   ____"
	@@echo "  / _ \|  _  \| ____| \ | |  ___|/ \   / ___| / _ \ / ___|"
	@@echo " | | | | |_) ||  _| |  \| | |_  / _ \  \___ \| | | | |    "
	@@echo " | |_| |  __/ | |___| |\  |  _|/ ___ \  ___) | |_| | |___ "
	@@echo "  \___/|_|    |_____|_| \_|_| /_/   \_\|____/ \___/ \____|"
	@@echo ""
	@@echo "==============================================================="
