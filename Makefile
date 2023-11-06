.PHONY: all libmx uninstall clean reinstall

SRC_FILES := $(wildcard src/*.c)
INC_FILES := $(wildcard inc/*.h)

all: libmx

libmx:
	@clang -c $(INC_FILES) $(SRC_FILES)
	@mkdir obj
	@mv *.o obj
	@ar -rc libmx.a obj/*.o
	@ranlib libmx.a


clean:
	@rm -f inc/*.gch
	@rm -rdf obj
	
uninstall: clean
	@rm -f libmx.a
	
	
reinstall: uninstall libmx