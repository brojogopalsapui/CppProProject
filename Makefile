CXX = g++-14
CXXFLAGS = -std=c++14 -Wall
SRC = src/main.cpp src/add.cpp
OBJ = $(SRC:.cpp=.o)
TARGET = sum

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ) $(TARGET) build_log.txt

