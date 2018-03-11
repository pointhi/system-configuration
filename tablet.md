
# General

Model: Acer Switch Alpha 12 (SA5-271-38U0)


## Some Websites about linux on this tablet

* http://acer-switch-alpha-12-testblog.chip.de/2016/09/11/0b-und-meinen-plan/
* 

# Steps

## BIOS

1.) go into BIOS pressing volume up while start
2.) Enable ```F12 Boot Menue```
3.) disable ```Secure Boot``` (you are required to set a supervisor password first)

## Make copy of partitions

1.) insert live usb-stick
2.) https://wiki.archlinux.org/index.php/disk_cloning#Create_disk_image
    ```sudo dd if=/dev/sda conv=sync,noerror bs=64K | gzip -c  > ./backup.img.gz```
    ```sudo fdisk -l /dev/sda > ./list_fdisk.info

## Install OS

1.) please note grub should not overwrite MBR (https://wiki.archlinux.org/index.php/Dual_boot_with_Windows#UEFI_systems) (ok, we cannot add a boot entry because of UEFI)
