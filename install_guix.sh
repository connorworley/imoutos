ROOT=$1
curl ftp://alpha.gnu.org/gnu/guix/guix-binary-0.11.0.x86_64-linux.tar.xz | tar --one-top-level="$ROOT" -Jxf -
ln -sv /var/guix/profiles/per-user/root/guix-profile "$ROOT/root/.guix-profile"
