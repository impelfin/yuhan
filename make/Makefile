OBJF=test1.o test2.o test3.o
test:	$(OBJF)
	gcc -o $@ $^
%.o: %.c
	gcc -c -g $< -o $@
clean : test $(OBJF)
	rm -rf $^
