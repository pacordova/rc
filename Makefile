CFLAGS += -fcommon -I../include -DPLAN9PORT

_dirs = lib src

all install clean:
	for d in ${_dirs}; do make -C $$d $@ CFLAGS="${CFLAGS}"; done
