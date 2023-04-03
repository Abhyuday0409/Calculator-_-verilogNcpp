#include <iostream>
#include <fstream>
#include <string>
#include <sstream>

using namespace std;

int main() {
    ifstream file1("output.txt");
    ifstream file2("output1.txt");

    string line1, line2;
    int lineNum = 0;
    bool match = true;

    while (getline(file1, line1) && getline(file2, line2)) {
        istringstream input1(line1);
        istringstream input2(line2);
        int a, b;
        input1 >> a;
        input2 >> b;
        lineNum++;
        if (a != b) {
            match = false;
            cout << "Outputs do not match on line " << lineNum << endl;
            cout << "Cpp output: " << line1 << endl;
            cout << "SystemVerilog output: " << line2 << endl;
        }
    }

    if (match) {
        cout << "All Outputs matched! Equivalence check Passed!" << endl;
    }

    file1.close();
    file2.close();

    return 0;
}
