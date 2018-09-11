#include <iostream>
#include <sstream>
#include <string>
using namespace std;

void TimestampEcho(const string& value)
{
	istringstream in{ value };
	string line;
	while (getline(in, line))
		cout << "[now] " << line << '\n';
}

int main(int argc, char** argv)
{
	for (auto index = 1; index < argc; ++index)
		TimestampEcho(argv[index]);
	return 0;
}
