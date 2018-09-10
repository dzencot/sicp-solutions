test:
	racket tests/$(e).test.rkt

run_tests:
	raco test -t ./tests

sicp_install:
	raco pkg install sicp
