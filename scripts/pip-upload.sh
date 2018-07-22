#!/bin/bash

directory = $1
pkg_name = $2

cd directory
python setup.py sdist
twine upload dist/* -r pypitest


sudo pip install --index-url https://test.pypi.org/pkg_name/ pkg_name
pkg_name --version
if [ $? -ne 0 ]; then
	echo 'package not installed from pypitest'
else
	sudo pip uninstall pkg_name
	python setup.py sdist
	twine upload dist/* -r pypi
	sudo pip install pkg_name
	pkg_name --version
	if [ $? -ne 0 ]; then
		echo 'package not installed from pypi'
	fi
fi
