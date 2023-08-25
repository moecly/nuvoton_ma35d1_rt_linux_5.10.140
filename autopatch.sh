#!/bin/sh
for i in $(ls -v ./zzz_linux_rtp_patches/0???*.patch) ;do
	[ ! -f "$i" ] && continue
	case "$i" in
		*.patch)
			echo $i " ======OK====="
			patch -p1 < $i
	;;
	*)
		echo $i " *********error************"
	;;
	esac
done
