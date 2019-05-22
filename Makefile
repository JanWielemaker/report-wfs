SWIPL=$HOME/src/swipl-devel
DOC2TEX=$(SWIPL)/man/doc2tex
RUNTEX=$(SWIPL)/man/runtex

wfs.tex: wfs.doc
	$(DOC2TEX) wfs.doc > wfs.tex

wfs.pdf:
	$(RUNTEX) wfs
