#!/bin/sh
#? To install the flatpak
#?     flatpak install flathub org.mozilla.firefox
#? To force wayland:
#?     flatpak override --user --socket=wayland org.mozilla.firefox
#?     flatpak override --user --env MOZ_ENABLE_WAYLAND=1 org.mozilla.firefox

if [ ! -e /usr/bin/flatpak ]; then
	printf "no /usr/bin/flatpak; falling back to /usr/bin/firefox\n" 1>&2
	exec /usr/bin/firefox "$@"
fi

if ! flatpak info org.mozilla.firefox 2>/dev/null; then
	printf "no org.mozilla.firefox flatpak; falling back to /usr/bin/firefox\n" 1>&2
	exec /usr/bin/firefox "$@"
fi

exec flatpak run org.mozilla.firefox "$@"
exit 127
