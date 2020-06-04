#!/bin/sh

ISOURL="http://ftp.iij.ad.jp/pub/linux/centos/8/isos/x86_64/CentOS-8.1.1911-x86_64-boot.iso"
ISOCHECKSUM="7fea13202bf2f26989df4175aace8fdc16e1137f7961c33512cbfad844008948"
ISOCHECKSUMTYPE="sha256"
KSFILE="ks_netboot.cfg"
CPUS="1"
MEMORY_MB="1024"


packer build \
	-var "iso_url=${ISOURL}" \
	-var "iso_checksum=${ISOCHECKSUM}" \
	-var "iso_checksum_type=${ISOCHECKSUMTYPE}" \
	-var "kickstart=${KSFILE}" \
	-var "cpus=${CPUS}" \
	-var "memory_mb=${MEMORY_MB}" \
	-only=virtualbox \
	centos8.1.json
