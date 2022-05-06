prefix = /usr/local

all:
	make -C lib && make -C src

clean:
	rm -f lib/*.a lib/*.o lib/*.gch src/rc src/*.o src/y.tab.[ch] 
         
install:
	mkdir -p $(DESTDIR)$(prefix)/bin \
		$(DESTDIR)/etc
	cp -p src/rc $(DESTDIR)$(prefix)/bin
	cp -p rcmain $(DESTDIR)/etc
