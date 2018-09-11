#!/bin/bash

sudo yum install gcc-c++ -y
mkdir bin
g++ -std=c++11 main.cpp -o bin/techo
sudo cp ./bin/techo /usr/local/bin
rm -rf bin
