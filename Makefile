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
	pylint --disable=R,C,W1203,W1202 app.py
	pylint --disable=R,C,W1203,W1202 Dockerfile

all: install lint test    
