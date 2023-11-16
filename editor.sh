#!/bin/sh
# editor.sh

if test -f /usr/bin/vim; then
	exec /usr/bin/vim "$@"
fi

if test -f /usr/bin/vi; then
	exec /usr/bin/vi "$@"
fi

if test -f /usr/libexec/vi; then
	exec /usr/libexec/vi "$@"
fi

exit 127
