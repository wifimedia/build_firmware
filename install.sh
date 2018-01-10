#!/bin/bash
# Copyright © 2017 Wifimedia.vn.
# All rights reserved.

source includes/function.sh
function show_menu() {

echo "======================================="

echo "======================================="
echo -e "1) WR940v5 Dev"
echo -e "2) WR840v4 Dev"
echo -e "3) WR840v5 Dev"
echo -e "4) WR841v13 Dev"
echo -e "5) WR940v5 "
echo -e "6) WR840v4 "
echo -e "7) WR840v5 "
echo -e "8) WR841v13 "
echo -e "9) WR940v3"
echo -e "10) Quit or q "
echo -n "Select an option: "
read menu_opt
case "${menu_opt}" in
	1)
		wr940v5_dev
		copy_ar7xx
		echo "Compile wifimedia firmware WR940v5 RC"
	;;
	2)	
		wr840v4_dev
		copy_ramips
		echo "Compile wifimedia firmware WR840v4 RC"
	;;
	3)
		wr840v5_dev
		copy_ramips
		echo "Compile wifimedia firmware WR840v5 RC"		
	;;
	4)
		wr841v13_dev
		copy_ramips
		echo "Compile wifimedia firmware WR841v13 RC"
	;;
	5)
	  wr940v5_stable
	  copy_ar7xx
	   echo "Compile wifimedia firmware WR940v5 Stable"
	;;
	6)
		wr840v4_stable
		copy_ramips
		echo "Compile wifimedia firmware WR840v4 Stable"	
	;;
	7)
		wr840v5_stable
		copy_ramips
		echo "Compile wifimedia firmware WR840v5 Stable"	
	;;
	8)
		wr841v13_stable
		copy_ramips
		echo "Compile wifimedia firmware WR841v13 Stable"	
	;;
	9) 
	wr940v3_stable
	copy_ar7xx
	echo "Compile wifimedia firmware WR940v3 Stable"	
	;;
	10|q) 
	exit 1
	;;
esac	
}
show_menu