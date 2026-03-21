#! /bin/sh

CONSOLE=gamecube

. /etc/profile.d/devkit-env.sh
. "$DEVKITPRO/libogc2/${CONSOLE}vars.sh"
make \
    -j16 \
    CPPFLAGS="$CPPFLAGS" \
    CFLAGS="$CFLAGS" \
    LDFLAGS="$LDFLAGS" \
    ENABLE_FETCH=0 \
    ENABLE_NLS=0 \
    PLATFORM=ogc \
    -o sols
