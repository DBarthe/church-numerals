OCAMLMAKEFILE=OCamlMakefile

SOURCES = church.ml
RESULT = libchurch

all: native-code-library byte-code-library

include $(OCAMLMAKEFILE)