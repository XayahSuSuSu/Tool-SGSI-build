#!/bin/bash
# AIK-mobile/cleanup: reset working directory
# osm0sis @ xda-developers

case $1 in
  --help) echo "usage: cleanup.sh [--quiet]"; return 1;
esac;

case $0 in
  *.sh) aik="$0";;
     *) aik="$(lsof -p $$ 2>/dev/null | grep -o '/.*cleanup.sh$')";;
esac;
aik="$(dirname "$(readlink -f "$aik")")";
bin="$aik/bin";

cd $aik;
chmod -R 755 $bin $aik/*.sh;
chmod 644 $bin/magic $bin/androidbootimg.magic $bin/BootSignature_Android.jar $bin/module.prop $bin/ramdisk.img $bin/avb/* $bin/chromeos/*;

rm -rf ramdisk split_img *new.* || return 1;

case $1 in
  --quiet) ;;
  *) echo "Working directory cleaned.";;
esac;
return 0;

