//#include<iostream>
#include<string>
#include<fstream>
#include<vector>
#include<sstream>
#include"func.h"

using namespace std;

//openFile Function gets the filename and opens fstream 
void openFile( fstream& inFile) {
	string fileName;
	cout << "PLease enter the file name: ";
	//std::getline(std::cin, fileName);
	inFile.open("data.txt");
	if (!inFile.is_open()) {
		cout << "File not found" << endl;
		exit(-1);
	}
	
}

string resultWtimeDate(string dateTime, int pass) {
	if (pass == 1) {
		dateTime[0] = '\"';
	}
	else if (pass == 2) {
		dateTime[0] = '?';
	}
	else {
		dateTime[0] = '/';
	}
	//date.append(dateTime);
	return dateTime;
}

void test(fstream& inFile) {
	char character;
	string line;
	int failCounter = 0;
	
	bool store = false;
	string dateTime;
	bool snWrited=false;
	bool sDetected=false;
	bool getLine = false;
	string finalDate;
	string serialNumber;
	//List<string> failed;
	int pass = 1;
	vector<string> failed = {};
	bool newDateDetected = false;
	int newDateCounter=0;
	
	while (inFile >> line) {
		//02/19/2020 edit
		
		

		if (getLine) {
			
			getLine = false;
			serialNumber = line;
			
		}
		bool store = false;
		sDetected = false;

		
		std::istringstream iss(line);
		if (snWrited) {
			snWrited = false;			
		}
		int count = 0;
		while (iss >> character) {
			
				count += 1;
			
			if (character == '@') {
				dateTime = line;
				store = true;
				break;
			}
			if (character== 'S') {
				count = 1;
			}

			if (character == 'N' && count==2) {
				//cout << line << endl;
				getLine = true;
				break;
			}
			if (character == '>' || character == '<') {
				failCounter += 1;
				pass = 3;
				failed.push_back(line);
			}
			
			//exit(-1)
		}
		
		
		if (store) {
			finalDate = resultWtimeDate(dateTime, pass);
			newDateDetected = true;
			newDateCounter+=1;
			
			//store = false;
		}
		if (newDateDetected && newDateCounter>1) {
			cout << "______________________________" << endl;
			defectPart<string> defectParts (serialNumber, finalDate, failed);
			if (pass == 1) {
				cout << "PASSED!" << endl;
			}
			else {
				cout << "!!!!!!!!!!!!!!Failed!!!!!!!!!!!!!!!" << endl;
			}
			
			defectParts.display();
			
			failed = {};
			//failed.destroy();
			//failed.display();
			newDateDetected = false;
			pass = 1;
			
		}
		
	}
	cout << endl << "_________________________________________________________________" << endl<< "Number of components failed: " << failCounter << endl << "_________________________________________________________________" << endl;
}


int main() {
	fstream inFile;

	//defectPart<string> defectPartsObject;

	//listDefectbySn <defectPartsObject> completeList;


	openFile(inFile);
	test(inFile);
	
	return 0;
}