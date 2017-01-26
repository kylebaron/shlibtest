
doc: 
	R script -e "library(devtools)" -e "document()"


all:
	make doc
	R CMD BUILD .
	R CMD INSTALL systest_0.1.0.tar.gz

check:
	make doc
	R CMD BUILD .
	R CMD CHECK --no-manual systest_0.1.0.tar.gz
