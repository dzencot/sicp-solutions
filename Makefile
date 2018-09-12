test:
	racket tests/$(e).test.rkt

run_tests:
	raco test -t ./tests

sicp_install:
	raco pkg install sicp

new:
	ansible-playbook templates/templating.yml -i localhost, --connection=local -e exc=$(e) -v
