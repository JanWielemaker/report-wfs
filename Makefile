SWIPL=$(HOME)/src/swipl-devel
DOC2TEX=$(SWIPL)/man/doc2tex
RUNTEX=$(SWIPL)/man/runtex

all: wfs.pdf

wfs.tex: wfs.doc
	$(DOC2TEX) wfs.doc > wfs.tex

wfs.pdf: wfs.tex
	$(RUNTEX) --pdf wfs

final:	wfs.tex
	$(RUNTEX) --pdf wfs
	$(RUNTEX) --pdf wfs
