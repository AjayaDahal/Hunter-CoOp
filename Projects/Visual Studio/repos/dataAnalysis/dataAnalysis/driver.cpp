#include<iostream>
//#include<string>
#include<fstream>
#include<vector>
#include<sstream>
#include"func.h"

using namespace std;


void openFile(string fileName, fstream &inFile, string &dateTime ) {
	inFile.open(fileName);
	if (!inFile.is_open()) {
		cout << "File not found" << endl;
		exit(-1);
	}
	getline(inFile, dateTime);
}

string resultWtimeDate(string dateTime, int pass) {
	vector<char> dateToChar;
	for (int j = 0; j < dateTime.size(); j++) {
		dateToChar.push_back(dateTime[j]);
	}
	if (pass == 1) {
		dateTime[0]='\"';
	}
	else if(pass==2){
		dateTime[0] = '?';
	}
	else {
		dateTime[0] = '/';
	}
	return dateTime;
}

void test(fstream &inFile, string line, int &pass, string dateTime) {
	char character;
	int failCounter=0;
	int abortCounter=0;
	bool display = false;

	while (inFile >> line) {
		std::istringstream iss(line);
		while (iss >> character) {
			if (character == '>' || character == '<') {
				pass = 0;
				if (failCounter == 0) {
					cout << resultWtimeDate(dateTime, pass) << endl;
					display = true;
				}
				failCounter += 1;
				//exit(-1);
			}
			else if (character == '#') {
				pass = 2;
				if (abortCounter == 0) {
					display = true;
					cout << resultWtimeDate(dateTime, pass) << endl;
				}
				abortCounter += 1;
				//exit(0);
			}
			
		}
		pass = 1;
	}
	if (!display) {
		cout << resultWtimeDate(dateTime, pass) << endl;
	}
	cout << "Number of test failed: " << failCounter<<endl;
	cout << "Number of test with #: " << abortCounter << endl;
}

int main() {
	fstream inFile;
	int pass;
	string line;
	string dateTime;
	string fileName;

	cout<<"PLease enter the file name: ";
	std::getline(std::cin, fileName);

	openFile("data.txt", inFile, dateTime);
	test(inFile, line, pass, dateTime);

	return 0;
}