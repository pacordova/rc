CFLAGS += -fcommon -I../include -DPLAN9PORT

_dirs = lib src

all install clean:
	echo cflags are ${CFLAGS};
	for d in ${_dirs}; do make -C $$d $@ CFLAGS="${CFLAGS}"; done
