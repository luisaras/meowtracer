main: main.o Color.o Vec3.o MeowImage.o
	g++ -o main main.o Color.o Vec3.o MeowImage.o

main.o: main.cpp
	g++ -c main.cpp

Color.o: src/util/Color.cpp 
	g++ -c src/util/Color.cpp include/util/Color.h

Vec3.o: src/util/Vec3.cpp 
	g++ -c src/util/Vec3.cpp include/util/Vec3.h

MeowImage.o: src/MeowImage.cpp
	g++ -c src/MeowImage.cpp include/MeowImage.h
