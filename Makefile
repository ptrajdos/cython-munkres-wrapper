ROOTDIR=$(realpath $(dir $(firstword $(MAKEFILE_LIST))))


.PHONY: all clean 

install:
	pip install -e ${ROOTDIR}

clean:
	rm -rf ${ROOTDIR}/build
	rm ${ROOTDIR}/src/munkres.cpp
	find ${ROOTDIR} -maxdepth 1 -name "munkres*\.so" -exec rm {} \;
