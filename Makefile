DESTDIR=
prefix=/usr/local
bindir=${prefix}/bin

all:
	@/bin/echo "Type 'make install' to install dwnl."

install: dwnl
	install -o root -g wheel -m 755 dwnl  $(DESTDIR)${bindir}

uninstall:
	rm $(DESTDIR)${bindir}/dwnl

clean:
	rm dwnl-*.tar.gz* || true
