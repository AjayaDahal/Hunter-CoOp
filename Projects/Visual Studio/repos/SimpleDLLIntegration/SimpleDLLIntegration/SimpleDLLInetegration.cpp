#include "SimpleDLLHeader.h"
#include<cstdio>


__declspec(dllexport) int Multiply(int c, int d) {
	return c*d;
}

