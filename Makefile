OBJS=1-hello_world 2-variables 3-always 4-assignment 5-assign 6-module 7-param 8-task 9-function

all: $(OBJS)

%: %.v
	iverilog -Wall -o $@ $<

clean:
	rm -f $(OBJS) *.vcd