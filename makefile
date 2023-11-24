CXX = g++
CXXFLAGS = -g -Wall -Wextra 

.PHONY: all
all : romandigitconverter

romandigitconverter: romandigitconverter.cpp numberconversion.o
	$(CXX) $(CXXFLAGS) -o $@ $^

numberconversion.o: numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -c $<

.PHONY : clean
clean:
	$(RM) *~ *.o romandigitconverter