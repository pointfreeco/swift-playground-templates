dir = $(HOME)/Library/Developer/Xcode/Templates/File\ Templates/Playground

install: $(dir)
	cp -R *.xctemplate $(dir)

$(dir):
	mkdir -p $(dir)

.PHONY = install
