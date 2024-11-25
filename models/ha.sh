#!/bin/sh


req() {
	for i in $1/*;do
		name=$i
		low=$(echo "$i" | tr '[A-Z]' '[a-z]')
		if ! [ "$low" == "$i" ];then mv -v "$i" "$low";name=$low;fi

		if [ -d "$name" ];then
			req "$name"
		fi
	done;
}

req .
