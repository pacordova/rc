CC = gcc
CFLAGS := -O2 -I../include -DPLAN9PORT -fcommon $(CFLAGS)

NUM=\
	charstod.o\
	pow10.o\

# Could add errfmt, but we want to pick it up from lib9 instead.
FMTOFILES=\
	dofmt.o\
	fltfmt.o\
	fmt.o\
	fmtfd.o\
	fmtfdflush.o\
	fmtlocale.o\
	fmtlock2.o\
	fmtnull.o\
	fmtprint.o\
	fmtquote.o\
	fmtrune.o\
	fmtstr.o\
	fmtvprint.o\
	fprint.o\
	frexp.o\
	nan64.o\
	print.o\
	runefmtstr.o\
	runeseprint.o\
	runesmprint.o\
	runesnprint.o\
	runesprint.o\
	runevseprint.o\
	runevsmprint.o\
	runevsnprint.o\
	seprint.o\
	smprint.o\
	snprint.o\
	sprint.o\
	strtod.o\
	vfprint.o\
	vseprint.o\
	vsmprint.o\
	vsnprint.o\
	$(NUM)\

UTFOFILES=\
	rune.o\
	runestrcat.o\
	runestrchr.o\
	runestrcmp.o\
	runestrcpy.o\
	runestrdup.o\
	runestrlen.o\
	runestrecpy.o\
	runestrncat.o\
	runestrncmp.o\
	runestrncpy.o\
	runestrrchr.o\
	runestrstr.o\
	runetype.o\
	utfecpy.o\
	utflen.o\
	utfnlen.o\
	utfrrune.o\
	utfrune.o\
	utfutf.o\

LIB9OFILES=\
	_exits.o\
	_p9dialparse.o\
	_p9dir.o\
	announce.o\
	argv0.o\
	atexit.o\
	atoi.o\
	atol.o\
	atoll.o\
	atnotify.o\
	await.o\
	cistrcmp.o\
	cistrncmp.o\
	cistrstr.o\
	cleanname.o\
	convD2M.o\
	convM2D.o\
	convM2S.o\
	convS2M.o\
	crypt.o\
	ctime.o\
	dial.o\
	dirfstat.o\
	dirfwstat.o\
	dirmodefmt.o\
	dirstat.o\
	dirwstat.o\
	dup.o\
	encodefmt.o\
	errstr.o\
	exec.o\
	execl.o\
	exitcode.o\
	fcallfmt.o\
	frand.o\
	get9root.o\
	getcallerpc.o\
	getenv.o\
	getfields.o\
	getnetconn.o\
	getns.o\
	getuser.o\
	getwd.o\
	jmp.o\
	lrand.o\
	lnrand.o\
	main.o\
	malloc.o\
	malloctag.o\
	mallocz.o\
	nan.o\
	needsrcquote.o\
	needstack.o\
	netcrypt.o\
	netmkaddr.o\
	notify.o\
	nrand.o\
	nulldir.o\
	open.o\
	opentemp.o\
	pin.o\
	pipe.o\
	post9p.o\
	postnote.o\
	qlock.o\
	quote.o\
	rand.o\
	read9pmsg.o\
	readcons.o\
	readn.o\
	rfork.o\
	searchpath.o\
	sendfd.o\
	sleep.o\
	strdup.o\
	strecpy.o\
	sysfatal.o\
	syslog.o\
	sysname.o\
	time.o\
	tm2sec.o\
	tokenize.o\
	truerand.o\
	u16.o\
	u32.o\
	u64.o\
	unsharp.o\
	wait.o\
	waitpid.o\
	write.o\
	zoneinfo.o\

OFILES=\
	$(LIB9OFILES)\
	$(FMTOFILES)\
	$(UTFOFILES)\

all: lib9.a

lib9.a: $(OFILES)
	ar rsc $@ $(OFILES)

%.o: $(HFILES) %.c
	$(CC) $(CFLAGS) -c $^
%.o: fmt/%.c
	$(CC) $(CFLAGS) -Ifmt -c $^

%.o: utf/%.c
	$(CC) $(CFLAGS) -c $^

ctime.o tm2sec.o zoneinfo.o: zoneinfo.h
