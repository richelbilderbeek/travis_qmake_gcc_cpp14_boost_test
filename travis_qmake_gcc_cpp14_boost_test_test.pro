HEADERS += my_functions.h
SOURCES += my_functions.cpp \
    main_test.cpp \
    my_functions_test.cpp

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14

# High warning levels
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

CONFIG += debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# Qt
QT -= core gui

# Boost.Test
LIBS += -lboost_unit_test_framework

# gcov
QMAKE_CXXFLAGS += -fprofile-arcs -ftest-coverage
LIBS += -lgcov
