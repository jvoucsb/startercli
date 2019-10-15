SRCS := $(wildcard *.cpp)
OBJS := $(patsubst %.cpp, %.o, $(SRCS))
TARGET := target

all: $(OBJS);

$(TARGET): $(OBJS)
	     g++ -o $@ $^

%.o: %.cpp
	g++ -o $@ $<

clean:
	rm -rf *.o $(TARGET)

.PHONY: all clean
