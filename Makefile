TOP = .
include $(TOP)/config.mk

%.html: %.md $(CSS) Makefile
	pandoc -c $(CSS) -f markdown -t html -T $(TITLE) -s -o $@ $<
