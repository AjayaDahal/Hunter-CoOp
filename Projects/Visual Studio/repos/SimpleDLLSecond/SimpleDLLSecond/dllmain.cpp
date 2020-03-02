// dllmain.cpp : Defines the entry point for the DLL application.
#include "framework.h"
#include<cstdio>

__declspec(dllexport) double Multiply(double c, double d) {
	return c * d;
}
__declspec(dllexport) double Add(double c, double d) {
	return c + d;
}
__declspec(dllexport) double Divide(double c, double d) {
	return c / d;
}
__declspec(dllexport) double Substract(double c, double d) {
	return c - d;
}

