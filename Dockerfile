from alpine:3.18.0

copy test.sh /test.sh

cmd "/bin/sh -c 'trap exit TERM; while :; do echo "anybody home?"; sleep 1d & wait $${!}; done;'"
