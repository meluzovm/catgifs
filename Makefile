## The Password includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv
	python3 -m venv ~/.venv

install:
	# This should be run from inside a virtualenv
	source ~/.venv/bin/activate
	pip install --upgrade pip && pip install -r requirements.txt
	#Installing hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	chmod +x /bin/hadolint

test:
	# Additional, optional, tests could go here
	#source ~/.venv/bin/activate
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# This should be run from inside a virtualenv
	source ~/.venv/bin/activate
	pylint --disable=R,C,W1203 app.py
	hadolint Dockerfile

all:  setup install lint
