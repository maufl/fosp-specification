IN=fosp.xml

all: html txt

html: $(IN)
	xml2html $(IN)

txt: $(IN)
	xml2txt $(IN)
