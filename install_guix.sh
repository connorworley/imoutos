ROOT=$1
curl -sS ftp://alpha.gnu.org/gnu/guix/guix-binary-0.11.0.x86_64-linux.tar.xz | tar --one-top-level="$ROOT" -Jxvf -
ln -sv /var/guix/profiles/per-user/root/guix-profile "$ROOT/root/.guix-profile"
ln -sv /var/root/.guix-profile/bin/guix "$ROOT/usr/bin"
ln -sv /var/root/.guix-profile/bin/guix-daemon "$ROOT/usr/bin"
