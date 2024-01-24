install:
	# install commands
	pip install --upgrade pip && \
		pip install -r requirements.txt

post-intall:
	# application specific
	python -m textblob.download_corpora

format:
	# format code
	black *.py my-utils/*.py

lint:
	# lint code
	pylint --disable=R,C *.py my-utils/*.py

test:
	# test python files
	python -m pytest -vv --cov=my-utils --cov=main test_*.py

build:
	# build container

run:
	# run docker

deploy:
	# deploy container

all:
	# list which all make commands to run
	install post-install lint test deploy run
