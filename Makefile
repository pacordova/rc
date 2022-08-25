CFLAGS += -fcommon -I../include -DPLAN9PORT

_dirs = lib src

all:
	for d in ${_dirs}; do make -C $$d all CFLAGS="${CFLAGS}"; done


clean:
	for d in ${_dirs}; do make -C $$d clean CFLAGS="${CFLAGS}"; done

install:
	for d in ${_dirs}; do make -C $$d install CFLAGS="${CFLAGS}"; done
	install -D rcmain ${DESTDIR}/etc/rcmain

