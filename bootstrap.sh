show_msg() {
    dialog --clear \
	   --backtitle "imoutos installation" \
	   --title "$1" \
	   --msgbox "$2" 12 60
}

target_disk=$(dialog --clear \
		     --backtitle "imoutos installation" \
		     --title "Disk Selection" \
		     --inputbox "Enter a device: (ex /dev/sda)" \
		     12 60 2>&1 > /dev/tty)
show_msg "Info" "Partitioning interface is not implemented.\n\n$target_disk will be automatically partitioned."     
echo "g
n


+512M
t
1
n



w
" | fdisk "$target_disk"
target_disk_info=$(fdisk -l "$target_disk" | tail -n 2)
show_msg "Info" "$target_disk was partitioned:\n\n$target_disk_info"
