init:
	pip install -r requirements.txt

test:
	py.test tests

README.rst: README.md
	pandoc README.md -o README.rst

presetup:  README.rst

build: presetup
	python setup.py build

