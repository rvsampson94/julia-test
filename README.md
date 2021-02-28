This repository was made to compare the efficiency of the C, Python, and Julia programming languages.
For Python, both the standard implementation and PyPy are used as the difference between these implementations can be drastic.
To make these comparison the Nth fibonacci number is calculated many times, and the execution times are logged.

To run the test suite simple run the command `make test`

You may wish to change some values at the top of the Makefile including:

`FIBNUM`
The Nth fibonacci number to be calculated


`ITERS`
The number of times that the fibonacci number will be calculated
