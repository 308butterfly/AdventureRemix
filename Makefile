CXX = gcc
FLAGS  = -std=c89
FLAGS += -g

OBJECTS=./build/308butterfly.adventure.o ./build/308butterfly.buildrooms.o

all: ${OBJECTS}
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.adventure.c -o ./bin/308butterfly.adventure
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.buildrooms.c -o ./bin/308butterfly.buildrooms

adv: ${ADVENTURE}
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.adventure.c -o ./bin/308butterfly.adventure

brooms: ${BUILDROOMS}
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.buildrooms.c -o ./bin/308butterfly.buildrooms

./build/308butterfly.adventure.o:src/308butterfly.adventure.c
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.adventure.c -c -o ./build/308butterfly.adventure.o

./build/308butterfly.buildrooms.o:src/308butterfly.buildrooms.c
	$(CXX) ${FLAGS} ${INCLUDES} ./src/308butterfly.buildrooms.c -c -o ./build/308butterfly.buildrooms.o

clean:
	del build\*