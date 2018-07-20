objs = main.o

hello_world: $(objs)
	$(CC) -o  hello_world $(objs)

clean:
	rm hello_world $(objs)
