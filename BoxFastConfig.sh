#! /bin/bash
#Configure new bootimage

TFTP_DIR=/home/tftpboot/
ROOTDISK_DIR=/home/rootdisk/
TFTP_KERNEL_NAME=vip2853.bin
ROOTDISK=rootdisk-2853

BOOTIMAGEDIR=/home/johnny/branch/KREATV-18198-tr069bugfix/products/ip-stb/boot_image/trunk-test/st40/vip28x3
KernelFile=kreatv-kernel-nfs-trunk-test_KREATV-18198-tr069bugfix_st40_vip28x3
RootDiskTgz=kreatv-rootdisk-trunk-test_KREATV-18198-tr069bugfix_st40_vip28x3.tgz

#Remove last kernel and rootdisk if have
cd $TFTPDIR
rm -fr $TFTP_KERNEL_NAME
cd $ROOTDISKDIR
rm -fr $ROOTDISK

#change $PWD to BOOTIMAGE directory to copy kernel and rootdisk 
cd $BOOTIMAGEDIR
cp $RootDiskTgz $ROOTDISK_DIR
cp $KernelFile $TFTP_DIR

#Make a few changes then
cd $TFTP_DIR
mv $KernelFile $TFTP_KERNEL_NAME
cd $ROOTDISK_DIR
tar xvf $RootDiskTgz
mv rootdisk $ROOTDISK
