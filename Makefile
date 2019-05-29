DOC2TEX=swipl doc2tex.pl
RUNTEX=./runtex

all: wfs.pdf

wfs.tex: wfs.doc
	$(DOC2TEX) wfs.doc wfs.tex

wfs.pdf: wfs.tex
	$(RUNTEX) --pdf wfs

final:	wfs.tex
	$(RUNTEX) --pdf wfs
	$(RUNTEX) --pdf wfs

clean:
	rm -f *~ wfs.tex
