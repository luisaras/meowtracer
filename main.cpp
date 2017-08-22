#ifndef __MAIN__
#define __MAIN__

#include <iostream>
#include <string>
#include <cstdlib>
#include <ctime>
#include "include/InputData.h"
#include "include/MeowImage.h"

void printScene(std::string &fileName) {
	InputData data;
	if (data.load(fileName)) {
		Color* colors = data.renderer->render(data.scene, data.colCount, data.rowCount);
		MeowImage img(data.colCount, data.rowCount, colors);
		if (data.isBin) {
			img.saveBin(data.outputFile);
		} else {
			img.save(data.outputFile);
		}
	}
}

int main(int argc, char* argv[]) {
	srand (time(NULL));
	if (argc > 1) {
		std::string fileName = argv[1];
		printScene(fileName);
	} else {
		std::cout << "File name must be specified." << std::endl;
	}
	return 0;
}

#endif