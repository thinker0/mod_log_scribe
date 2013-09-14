.PHONY: force

LDLIBS=-lfb303 -lthrift
LDFLAGS=-Lfb303/cpp
CFLAGS=-fPIC -Wall -Wreturn-type
INCLUDE=-I/usr/include/thrift -I/usr/include -Ifb303/gen-cpp -Ifb303/gen-cpp -I/usr/local/include -I/usr/local/include/thrift
LIBRARY=libscribe.a
SRCS=scribe_c.cpp $(wildcard gen-cpp/*.cpp)
OBJS=$(SRCS:%.cpp=%.o)
FB303_OBJS=$(wildcard fb303/cpp/*.o)

DEBUG=-g3

all: $(LIBRARY)
	thrift -o fb303 -I /usr/local/include/ -I /usr/local/include/thrift --gen cpp:pure_enums fb303.thrift
	thrift -o . -I /usr/local/include/ -I /usr/local/include/thrift --gen cpp:pure_enums scribe.thrift
	@true

%.o:
	$(CC) $(CFLAGS) -c -static $(INCLUDE) $(DEBUG) $*.cpp -o $*.o

$(LIBRARY): $(OBJS)
	ar crv libscribe.a $(OBJS) $(FB303_OBJS)

test: $(LIBRARY) test.c
	$(CC) scribe_c.o -L. -lscribe test.c $(INCLUDE) $(DEBUG) $(LDFLAGS) $(LDLIBS) -o test

clean: force
	rm -f *~ $(OBJS) *.a
