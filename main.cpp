#define _CRT_SECURE_NO_WARNINGS
#include <ctime>
#include <locale>
#include <iostream>
#include <iomanip>
#include <sstream>
#include <string>
using namespace std;

void TimestampEcho(const string& value)
{
	auto t = time(nullptr);
	auto tm = *localtime(&t);
	istringstream in{ value };
	string line;
	while (getline(in, line))
		cout << put_time(&tm, "[%Y-%m-%d %H:%M:%S] ") << line << '\n';
}

int main(int argc, char** argv)
{
	for (auto index = 1; index < argc; ++index)
		TimestampEcho(argv[index]);
	return 0;
}
