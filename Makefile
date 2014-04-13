IN=fosp.xml

.PHONY : clean

all: html txt pdf clean

html: $(IN)
	xml2html $(IN)

txt: $(IN)
	xml2txt $(IN)

pdf: $(IN)
	./xml2pdfrfc $(IN)

clean:
	rm *.nr *.ps tmp-*
