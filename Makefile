FIBNUM = 20
ITERS = 10000000

.SILENT: main
main: main.c
	gcc -s -O3 -o main main.c
	gcc -c -s -O3 -fPIC -o main.o main.c
	gcc -shared -o main.so main.o

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

	echo "### Julia ccall Test ###"
	LD_LIBRARY_PATH=. julia ccall.jl $(FIBNUM) $(ITERS)

clean:
	rm main main.o main.so 