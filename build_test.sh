#!/bin/bash
./clean.sh
qmake travis_qmake_gcc_cpp14_boost_test_test.pro
make
./travis_qmake_gcc_cpp14_boost_test_test