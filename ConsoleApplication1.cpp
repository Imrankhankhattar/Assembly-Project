  // ConsoleApplication1.cpp : This file contains the 'main' function. Program execution begins and ends there.
  //
#Include Irvine32.inc
#include "pch.h"
#include <iostream>
#include<fstream>
using namespace std;


int main()
{
	std::cout ;
	ifstream fin;
	fin.open("file3.txt");
	float a, b;
	while (fin.eof() == 0)
	{
		fin >> a;
		fin >> b; 
		float c = 0;
		
		_asm{
			
		fld a
		fld b
		fmul 
		fstp c
		}

		ofstream fout;
		fout.open("result.txt",ios::app);
		fout << c <<endl;
		fout.close();

		cout << endl;
		cout <<"AREA IS: "<< c << endl;
	
	}
	
	fin.close();	

}

//  Run program: Ctrl + F5 or Debug > Start Without Debugging menu
//  Debug program: F5 or Debug > Start Debugging menu

//   Tips for Getting Started: 
//    1. Use the Solution Explorer window to add/manage files
//    2. Use the Team Explorer window to connect to source control
//    3. Use the Output window to see build output and other messages
//    4. Use the Error List window to view errors
//    5. Go to Project > Add New Item to create new code files, or Project > Add Existing Item to add existing code files to the project
//    6. In the future, to open this project again, go to File > Open > Project and select the .sln file
