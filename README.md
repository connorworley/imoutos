# imoutos
Everyone loves their imoutos.
## Bootstrapping
    qemu-img create -f qcow2 imoutos.qcow2 2G
    modprobe nbd
    qemu-nbd --connect /dev/nbd0 imoutos.qcow2
    ./bootstrap.sh # Not finished, but can perform partitioning
    mkfs.ext4 /dev/nbd0p2
    mount /dev/nbd0p2 /mnt
    ./create_fh.sh /mnt
    ./install_guix.sh /mnt
    # TODO:
    # * Install guix packages
    # * Install additional configuration files
    # * Install grub