#!/bin/bash
# Copyright (c) 2011-2018, wradlib developers.
# Distributed under the MIT License. See LICENSE.txt for more info.

set -e

if [[ "$COVERAGE" == "true" ]]; then
    # export location of .coveragerc
    export COVERAGE_PROCESS_START=$WRADLIB_BUILD_DIR/.coveragerc
    nosetests -v --with-doctest --with-coverage --cover-erase  --cover-xml --cover-package=wradlib
else
    nosetests -v --with-doctest
fi
