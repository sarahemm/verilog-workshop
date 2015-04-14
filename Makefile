OBJS=1-hello_world 2-variables 3-always 4-assignment 5-assign

all: $(OBJS)

%: %.v
	iverilog -Wall -o $@ $<

clean:
	rm $(OBJS)