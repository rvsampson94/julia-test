FIBNUM = 20
ITERS = 10000000

.SILENT: main
main: main.c
	gcc -o main main.c

.SILENT: test
test: main
	echo "### C Test ###"
	./main $(FIBNUM) $(ITERS)

	echo "### Python Test ###"
	python main.py $(FIBNUM) $(ITERS)

	echo "### PyPy Test ###"
	pypy main.py $(FIBNUM) $(ITERS)

	echo "### Julia Test ###"
	julia main.jl $(FIBNUM) $(ITERS)

clean:
	rm main