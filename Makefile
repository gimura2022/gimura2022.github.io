MANDOC = mandoc
RM     = rm -rf

PAGES = index.7 cstyle.7

.PHONY: all
all: index.html

.PHONY: clear
clear:
	$(RM) index.html

index.html: $(PAGES)
	$(MANDOC) $< -T html -Ostyle=style.css > $@
