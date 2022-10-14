# https://github.com/arska/flask-helloworld/blob/master/app.py

setup:

	python -m venv ~/.capstone
	source ~/.capstone/bin/activate

install:
	pip install --upgrade pip 
	pip install -r requirements.txt

test:

lint:
	# hadolint Dockerfile
	hadolint Dockerfile
	# This is a linter for Python source code linter: https://www.pylint.org/
	# This should be run from inside a virtualenv
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test    
