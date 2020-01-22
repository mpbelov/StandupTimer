CXX		  := g++
CXX_FLAGS := -Wall -Wextra `wx-config --cxxflags` -std=c++17 -ggdb
WX_FLAGS  := `wx-config --libs`

BIN		:= bin
SRC		:= src
INCLUDE	:= include
LIB		:= lib

LIBRARIES	:=
EXECUTABLE	:= main


all: $(BIN)/$(EXECUTABLE)

run: clean all
	clear
	./$(BIN)/$(EXECUTABLE)

$(BIN)/$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) -L$(LIB) $^ $(WX_FLAGS) -o $@ $(LIBRARIES)

clean:
	-rm $(BIN)/*
