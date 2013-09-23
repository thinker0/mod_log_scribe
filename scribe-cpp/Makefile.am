


all:

THRIFT = $(thrift_home)/bin/thrift
THRIFT_INCLUDES = -I $(fb303_home)/share/
THRIFT_OPTS = $(THRIFT_INCLUDES) --gen cpp:pure_enums --gen py --gen php --gen java

EXTERNAL_LIBS = -L$(thrift_home)/lib -L$(fb303_home)/lib -lfb303 -lthrift -lthriftnb



SCRIBE_SRCS = gen-cpp/scribe.cpp gen-cpp/scribe_types.cpp gen-cpp/scribe_constants.cpp gen-cpp/FacebookService.cpp gen-cpp/fb303_constants.cpp gen-cpp/fb303_types.cpp

lib_LTLIBRARIES = libscribe-1.0.la
libscribe_1_0_la_SOURCES = $(SCRIBE_SRCS)
libscribe_1_0_la_LDFLAGS = -static

#shareddir = $(prefix)/lib
#shared_PROGRAMS = libscribe-1.0.so
#libscribe_1_0_so_SOURCES = $(SRCS)
#libscribe_1_0_so_CXXFLAGS = $(SHARED_CXXFLAGS)
#libscribe_1_0_so_LDFLAGS = $(SHARED_LDFLAGS)

thrift -o . -I /usr/local/include/ -I /usr/local/include/thrift --gen cpp:pure_enums fb303.thrift
thrift -o . -I /usr/local/include/ -I /usr/local/include/thrift --gen cpp:pure_enums scribe.thrift
