# imoutos
Imoutos is an attempt at my own Linux distro.  No longer being developed.
## Bootstrapping
    qemu-img create -f qcow2 imoutos.qcow2 2G
    modprobe nbd
    qemu-nbd --connect /dev/nbd0 imoutos.qcow2
    ./bootstrap.sh # Not finished, but can perform partitioning
    mkfs.ext4 /dev/nbd0p2
    mount /dev/nbd0p2 /mnt
    ./create_fh.sh /mnt
    ./install_guix.sh /mnt
    ./install_packages.sh /mnt linux-libre coreutils util-linux bash
    # TODO:
    # * Install additional configuration files
    # * Install grub
