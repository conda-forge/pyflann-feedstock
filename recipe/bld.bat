cd src\python

cmake . -DLIBRARY_OUTPUT_PATH="%LIBRARY_BIN%" -DFLANN_VERSION="%PKG_VERSION%"
if errorlevel 1 exit 1

%PYTHON% setup.py install
if errorlevel 1 exit 1
