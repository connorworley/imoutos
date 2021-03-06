ROOT=$1
install -o root -g root -m 755 -dv "$ROOT/"
ln -sv usr/bin "$ROOT/bin"
install -o root -g root -m 755 -dv "$ROOT/boot"
#install -o root -g root -m 700 -dv "$ROOT/boot/efi"
#install -o root -g root -m 755 -dv "$ROOT/boot/grub"
install -o root -g root -m 755 -dv "$ROOT/dev"
install -o root -g root -m 755 -dv "$ROOT/etc"
install -o root -g root -m 755 -dv "$ROOT/home"
ln -sv usr/lib "$ROOT/lib"
ln -sv lib "$ROOT/lib64"
install -o root -g root -m 755 -dv "$ROOT/proc"
install -o root -g root -m 700 -dv "$ROOT/root"
install -o root -g root -m 755 -dv "$ROOT/run"
ln -sv usr/sbin "$ROOT/sbin"
install -o root -g root -m 1777 -dv "$ROOT/tmp"
install -o root -g root -m 755 -dv "$ROOT/usr"
install -o root -g root -m 755 -dv "$ROOT/usr/bin"
install -o root -g root -m 755 -dv "$ROOT/usr/include"
install -o root -g root -m 755 -dv "$ROOT/usr/lib"
install -o root -g root -m 755 -dv "$ROOT/usr/sbin"
install -o root -g root -m 755 -dv "$ROOT/usr/share"
install -o root -g root -m 755 -dv "$ROOT/usr/src"
install -o root -g root -m 755 -dv "$ROOT/var"
install -o root -g root -m 755 -dv "$ROOT/var/cache"
install -o root -g root -m 755 -dv "$ROOT/var/lib"
install -o root -g root -m 1777 -dv "$ROOT/var/lock"
install -o root -g root -m 755 -dv "$ROOT/var/log"
install -o root -g root -m 755 -dv "$ROOT/var/run"
install -o root -g root -m 755 -dv "$ROOT/var/spool"
install -o root -g root -m 1777 -dv "$ROOT/var/tmp"
