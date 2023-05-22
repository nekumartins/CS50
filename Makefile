MAKEFLAGS += --silent

CC = clang
CXX = clang++
CFLAGS = -ggdb3 -O0 -std=c11 -Wall -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow
CXXFLAGS = -ggdb3 -O0 -std=c++11 -Wall -Wextra -Wshadow
LDLIBS = -lcs50 -lm -lstdc++

PROGRAMS = calculator onthaline mario

SRCS_C := $(shell find . -name "*.c")
SRCS_CPP := $(shell find . -name "*.cpp")
OBJS_C := $(SRCS_C:.c=.o)
OBJS_CPP := $(SRCS_CPP:.cpp=.o)

.PHONY: all clean

all: $(PROGRAMS)
    @rm -f $(OBJS_C) $(OBJS_CPP)

calculator: calculator.o
    $(CC) $(CFLAGS) $^ $(LDLIBS) -o $@

mario: mario.o
    $(CC) $(CFLAGS) $^ $(LDLIBS) -o $@

onthaline: onthaline.o
    $(CXX) $(CXXFLAGS) $^ $(LDLIBS) -o $@

%.o: %.c
    $(CC) $(CFLAGS) -c $< -o $@

%.o: %.cpp
    $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
    rm -f $(PROGRAMS) $(OBJS_C) $(OBJS_CPP)