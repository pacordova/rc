OFILES=\
	code.o\
	exec.o\
	getflags.o\
	glob.o\
	here.o\
	io.o\
	lex.o\
	parse.o\
	pcmd.o\
	pfnc.o\
	simple.o\
	subr.o\
	trap.o\
	tree.o\
	unixcrap.o\
	var.o\
	y.tab.o\
	plan9ish.o\
	havefork.o\

HFILES=\
	rc.h\
	x.tab.h\
	io.h\
	exec.h\
	fns.h\

all: rc

rc: ${HFILES} ${OFILES}
	cc -o $@ ${OFILES} ../lib/lib9.a

%.o: %.c
	cc ${CFLAGS} -c $^

x.tab.h: y.tab.h
	cmp -s x.tab.h y.tab.h || cp y.tab.h x.tab.h

y.tab.h y.tab.c: syn.y
	yacc -d $^

install: rc
	install -D rc ${DESTDIR}${PREFIX}/bin/rc
	install -D rcmain ${DESTDIR}/etc/rcmain

clean:
	rm -f *.o *.a *.out y.tab.* *.gch rc
