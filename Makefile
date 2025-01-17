MANDOC = mandoc
RM     = rm -rf

.PHONY: all
all: index.html

.PHONY: clear
clear:
	$(RM) index.html

index.html: index.7 style.css
	$(MANDOC) index.7 -T html -Ostyle=style.css > $@
