#! /bin/bash
#Configure new bootimage

TFTP_DIR=/home/tftpboot/
ROOTDISK_DIR=/home/rootdisk/
TFTP_KERNEL_NAME=vip2952.bin
ROOTDISK=rootdisk-2952

BOOTIMAGEDIR=/home/johnny/branch/KREATV-18198-tr069bugfix/products/ip-stb/boot_image/trunk-test/bcm45/vip29x2

rm -fr ($TFTPDIR)$TFTP_KERNEL_NAME
rm -fr ($ROOTDISKDIR)$ROOTDISK
cd /home/johnny/branch/KREATV-18198-tr069bugfix/products/ip-stb/boot_image/trunk-test/bcm45/vip29x2
cp kreatv-kernel-nfs-trunk-test_KREATV-18198-tr069bugfix_bcm45_vip29x2 /home/tftpboot/
cp kreatv-rootdisk-trunk-test_KREATV-18198-tr069bugfix_bcm45_vip29x2.tgz /home/rootdisk/
cd /home/tftpboot
mv kreatv-kernel-nfs-trunk-test_KREATV-18198-tr069bugfix_bcm45_vip29x2 vip2952.bin
cd /home/rootdisk
tar xvf kreatv-rootdisk-trunk-test_KREATV-18198-tr069bugfix_bcm45_vip29x2.tgz
mv rootdisk rootdisk-2952
