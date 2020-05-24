## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	python3 -m venv ~/.dockerproj

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config 
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py
	# See local hadolint install instructions:   
	#https://github.com/hadolin># This is linter for Dockerfiles

	# This is a linter for Python source code linter: https://www.pylint.or>
	# This should be run from inside a virtualenv
	#pylint --disable=R,C,W1203 app.py

all: install lint test
