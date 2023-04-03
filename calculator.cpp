#include <bits/stdc++.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;



int main() {
    ifstream input_file("input.txt");
    ofstream output_file("output.txt");

    string input_line;
    while (getline(input_file, input_line)) {
        istringstream input_stream(input_line); // Parse input line
        int a, b;
        string op;
        input_stream >> a >> op >> b;
        int result;

        if (op == "+") {
            result = a + b; // addition
        } else if (op == "-") {
            result = a - b; // subtraction
        } else if (op == "*") {
            result = a * b; // multiplication
        } else if (op == "/") {
            result = a / b; // division
        } else if (op == "&") {
            result = a & b; // bitwise AND
        } else if (op == "|") {
            result = a | b; // bitwise OR
        } else if (op == "<<") {
            result = a << b; // bitwise shift left
        } else if (op == ">>") {
            result = a >> b; // bitwise shift right
        } else {
            result = 0; // invalid operation code
        }

        output_file << result << endl;
    }

    input_file.close();
    output_file.close();

    return 0;
}
