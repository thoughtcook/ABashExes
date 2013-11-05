#!/bin/bash
echo
echo "-----------------------------------------"
echo "Detecting Information of this maching..."
sleep 1

echo -n "----Net node ostname: "
hostname

echo
echo -n "----kernel name: "
uname -s

echo
echo -n "----kernel release: "
uname -r

echo
echo -n "----kernel version: "
uname -v

echo
echo -n "----processor type: "
uname -p

echo
echo -n "----operation system: "
uname -o

echo

case $(arch) in
 i386) echo "80386-based machine";;
 i486) echo "80486-based machine";;
 i586) echo "Pentium-based machine";;
 i686) echo "Pentium2+-based machine";;
 * ) echo "Other type of machine";;
esac
echo

sleep 1
echo "---------------------------------------"
echo "More details.........."
echo "----CPU info:"
echo -n "------"
cat /proc/cpuinfo | grep "model name" | sort -u
echo -n "------"
cat /proc/cpuinfo | grep "cpu MHz" | sort -u
echo -n "------"
cat /proc/cpuinfo | grep "cache size" | sort -u
echo

echo "----Memory info:"
echo -n "----"
cat /proc/meminfo | grep "MemTotal"

echo "----PCI device:"
lspci


exit 0
