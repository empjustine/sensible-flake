#!/bin/bash

command_exists() {
	command -v "$1" >/dev/null 2>&1
}

if command_exists xterm; then
	exec xterm "$@"
fi

if command_exists foot; then
	exec foot "$@"
fi

if command_exists gnome-terminal; then
	exec gnome-terminal "$@"
fi
