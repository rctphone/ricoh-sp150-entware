pkgfilter_PROGRAMS = rastertoricohsp150su
pkgfilterdir = $(CUPS_SERVERBIN)/filter

rastertoricohsp150su_SOURCES = \
	cupsfilters/driver.h \
	rastertoricohsp150su.c
rastertoricohsp150su_CFLAGS = \
	$(CUPS_CFLAGS) \
	$(LIBJBIG_CFLAGS) \
	-I$(srcdir)/cupsfilters/
rastertoricohsp150su_LDADD = \
	-lcups \
	-lcupsimage \
	-ljbig
# install-exec-hook:
# 	$(INSTALL) -d -m 755 $(DESTDIR)$(pkgfilterdir)
# SUBDIRS =
