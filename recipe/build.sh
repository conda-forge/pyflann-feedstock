#!/bin/bash

export CMAKE_GENERATOR="Unix Makefiles"

# python source is bundled with flann source
cd src/python
cmake . \
    -G "${CMAKE_GENERATOR}" \
    -DLIBRARY_OUTPUT_PATH="$PREFIX/lib" \
    -DFLANN_VERSION="$PKG_VERSION"
$PYTHON -m pip install --no-deps --ignore-installed .
