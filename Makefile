
o/%.o: %.cpp
	g++ -std=c++17 -O3 -c -o $@ $< -Wall -Wextra -Wpedantic -I/opt/local/include -Ifw/include -Iproject/include -Itoolsets/include -I. -Iview/include -Ievoke/include

bin/evoke_make: $(patsubst %.cpp,o/%.o,$(shell find ./ -name *.cpp))
	g++ -O3 -o $@ $^ -L/opt/local/lib -lboost_filesystem -lboost_system -pthread

