#!/bin/bash
# Copyright © 2017 Wifimedia.vn.
# All rights reserved.

#update_dev

function wr940v5_stable() {
	cd ./includes
	cat ../config_build/feeds_wr940v5_80211r >../../lede/feeds.conf.default
	cat ../config_build/config-wr940v5-stable >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr840v5_stable() {
	cd ./includes
	cat ../config_build/feeds_wr840v4 >../../lede/feeds.conf.default
	cat ../config_build/config-wr840v5-stable >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr840v4_stable() {
	cd ./includes
	cat ../config_build/feeds_wr840v4 >../../lede/feeds.conf.default
	cat ../config_build/config-wr840v4-stable >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr841v13_stable() {
	cd ./includes
	cat ../config_build/feeds_wr841v13 >../../lede/feeds.conf.default
	cat ../config_build/config-wr841v13-stable >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

#################Deverlop#########################

function wr940v5_dev() {
	cd ./includes
	cat ../config_build/feeds_wr940v5_dev >../../lede/feeds.conf.default
	cat ../config_build/config-wr940v5-dev >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99	
}

function wr840v5_dev() {
	cd ./includes
	cat ../config_build/feeds_wr840v4 >../../lede/feeds.conf.default
	cat ../config_build/config-wr840v5-dev >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr840v4_dev() {
	cd ./includes
	cat ../config_build/feeds_wr840v4_dev >../../lede/feeds.conf.default
	cat ../config_build/config-wr840v4-dev >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr841v13_dev() {
	cd ./includes
	cat ../config_build/feeds_wr841v13 >../../lede/feeds.conf.default
	cat ../config_build/config-wr841v13-dev >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function wr940v3_stable() {
	cd ./includes
	cat ../config_build/feeds_wr940v3_stable >../../lede/feeds.conf.default
	cat ../config_build/config-wr940v3_stable >../../lede/.config
	cd ../../lede
	./scripts/feeds update -a
	./scripts/feeds install -a
	make V=99
}

function copy_ar7xx() {
now="$(date +'%d-%m-%Y')"
rm firmware/*
cp ../lede/bin/targets/ar71xx/generic/*.bin ../build_firmware/firmware/
cd firmware
for file in *.bin; do
	new_name=`echo $file | sed 's/lede-ar71xx-generic/'$now'-stable/g'`
	echo $new_name
	echo $file
	mv $file  $new_name
done
}

function copy_ramips() {
now="$(date +'%d-%m-%Y')"
rm firmware/*
cp ../lede/bin/targets/ramips/mt76x8/*.bin ../build_firmware/firmware/
sleep 5
cd firmware
for file in *.bin; do
	new_name=`echo $file | sed 's/lede-ramips-mt76x8/'$now'-stable/g'`
	echo $new_name
	echo $file
	mv $file  $new_name
done
}
