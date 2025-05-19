MANDOC = mandoc
RM     = rm -rf


.PHONY: all
all: index.html cstyle.html

.PHONY: clean
clean:
	$(RM) index.html
	$(RM) cstyle.html

%.html: %.7
	$(MANDOC) $< -T html -Ostyle=style.css > $@
