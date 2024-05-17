CC = gcc
YACC = bison -d -b y 
CFLAGS := -O2 -I../include -DPLAN9PORT -fcommon $(CFLAGS)

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

YFILES= syn.y

all: rc

rc: $(OFILES) ../lib/lib9.a
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c $(HFILES)
	$(CC) $(CFLAGS) -c $<

x.tab.h: y.tab.h
	cmp -s x.tab.h y.tab.h || cp y.tab.h x.tab.h

y.tab.c y.tab.h: $(YFILES)
	$(YACC) $^
