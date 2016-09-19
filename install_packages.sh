export ROOT=$1
shift
mount --bind "$ROOT/gnu" /gnu
mount --bind "$ROOT/var/guix" /var/guix
nohup "$ROOT/gnu/store/5drb0ijbszvy8xmps89qcav1p4vy9wqr-guix-0.11.0/bin/guix-daemon" > /dev/null 2>&1  &
DAEMON_PID=$!
"$ROOT/gnu/store/5drb0ijbszvy8xmps89qcav1p4vy9wqr-guix-0.11.0/bin/guix" package -i "$@"
kill -9 "$DAEMON_PID"
sleep 1
umount /gnu
umount /var/guix
