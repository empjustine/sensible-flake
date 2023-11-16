#!/bin/sh
# pager.sh

command_exists() {
	command -v "$1" >/dev/null 2>&1
}

if command_exists lesspipe.sh; then
	exec lesspipe.sh "$@"
fi

if test -f /usr/bin/lesspipe.sh; then
	exec /usr/bin/lesspipe.sh "$@"
fi

if test -f /usr/bin/less; then
	exec /usr/bin/less "$@"
fi

if test -f /usr/bin/more; then
	exec /usr/bin/more "$@"
fi

exit 127
