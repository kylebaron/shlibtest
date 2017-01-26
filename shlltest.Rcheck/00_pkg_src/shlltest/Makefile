PKG=shlltest

doc: 
	Rscript -e "library(devtools)" -e "document()"


all:
	make doc
	R CMD BUILD .
	R CMD INSTALL ${PKG}_0.1.0.tar.gz

check:
	make doc
	R CMD BUILD .
	R CMD CHECK --no-manual ${PKG}_0.1.0.tar.gz
