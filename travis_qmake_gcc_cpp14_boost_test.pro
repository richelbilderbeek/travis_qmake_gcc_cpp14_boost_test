SOURCES += main.cpp my_functions.cpp
HEADERS += my_functions.h

# C++14
CONFIG += c++14
QMAKE_CXXFLAGS += -std=c++14

# High warning levels
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror

# Debug and release versions
CONFIG += console debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# Qt
QT -= core gui

