
all:
	R CMD BUILD .
	R CMD INSTALL shlibtest_0.1.0.tar.gz

check:
	make all
	R CMD CHECK shlibtest_0.1.0.tar.gz
