################################################################################
# Copyright 2025, Trusted Computing Group (TCG).                               #
# All rights reserved.                                                         #
# ---------------------------------------------------------------------------- #
# Makefile for locally building TCG Typst documents.                           #
# ---------------------------------------------------------------------------- #
# Author:        Michael Eckel <michael.eckel@sit.fraunhofer.de>               #
# Date Modified: 2025-06-10T08:22:42+02:00                                     #
# Date Created:  2025-06-10T08:22:42+02:00                                     #
################################################################################


SHELL        := /bin/sh
TYPST        := typst
RM           := rm

EXTRA_BUILD_OPTS = --font-path='./fonts/'

TYPST_FILES := $(wildcard *.typ)
PDF_FILES := $(patsubst %.typ, %.pdf, $(TYPST_FILES))
HTML_FILES := $(patsubst %.typ, %.html, $(TYPST_FILES))

.PHONY: all pdf html clean

all: pdf

pdf: $(PDF_FILES)
html: $(HTML_FILES)

%.pdf: %.typ
	$(TYPST) compile \
		$(EXTRA_BUILD_OPTS) \
		--format='pdf' \
		--pdf-standard='a-2b' \
		$< \
		$@

%.html: %.typ
	$(TYPST) compile \
		$(EXTRA_BUILD_OPTS) \
		--features='html' \
		--format='html' \
		$< \
		$@

clean:
	$(RM) $(PDF_FILES) $(HTML_FILES)
