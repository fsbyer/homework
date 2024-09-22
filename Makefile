CC=g++
CFLAGS=-c -Wall -Wextra -std=c++11
LDFLAGS=
SOURCES=hello_world.cpp main.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello_world
all:$(SOURCES)$(EXCUTABLE)
$(EXCUTABLE):$(OBJECTS)
$(CC)$(LDFLAGS)$^-O $@
.cpp.o:
$(CC)$(CFLAGS)$^-o $@
clean:
$(RM)$(OBJECTS)$(EXECYTABLE)