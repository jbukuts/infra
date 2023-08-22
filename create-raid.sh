DRIVES="/dev/sda /dev/sdb"
TARGET="/dev/md0"

sudo mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 $DRIVES