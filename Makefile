MAKEFILE_DIR = $(lastword $(dir $(MAKEFILE_LIST)))
BASE_LIBDIR = $(abspath $(MAKEFILE_DIR)/..)

LIBRARIES = \
	$(BASE_LIBDIR)/peg-parser \
	$(BASE_LIBDIR)/slot-visitor \
	$(BASE_LIBDIR)/sequence-stream \
	$(BASE_LIBDIR)/dynamic-binding

libflags = $(addprefix -L,$(LIBRARIES))

template-engine: library-gd.lid *.dylan
	d2c -g $(libflags) library-gd.lid

clean:
	-rm -f *.o *.s *.a *.c *.mak *.el *.lib.du *~
	-rm -rf .libs
