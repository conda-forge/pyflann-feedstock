cd src\python

cmake . ^
    -G "%CMAKE_GENERATOR%" ^
    -DLIBRARY_OUTPUT_PATH="%LIBRARY_BIN%" ^
    -DFLANN_VERSION="%PKG_VERSION%"
if errorlevel 1 exit 1

%PYTHON% -m pip install --no-deps --ignore-installed .
if errorlevel 1 exit 1
