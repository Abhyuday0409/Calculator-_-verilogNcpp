module calculator;
  
  logic [31:0] a, b, result;
  string op_str; 
  
  string input_file_name = "input.txt";
  string output_file_name = "output1.txt";
  bit [31:0] input_file_handle, output_file_handle;
  
  initial begin
  // Open the input and output files
    input_file_handle = $fopen(input_file_name, "r");
    output_file_handle = $fopen(output_file_name, "w");
  end
  
  
  initial begin
    int count = 0;
    while (!$feof(input_file_handle)) begin// check for end of line
      count++;
      $fscanf(input_file_handle, "%d %s %d", a, op_str, b);
      
      if (op_str == "+")
        result = a + b; // addition
      else if (op_str == "-")
        result = a - b; // subtraction
      else if (op_str == "*")
        result = a * b; // multiplication
      else if (op_str == "/")
        result = a / b; // division
      else if (op_str == "&")
        result = a & b; // bitwise AND
      else if (op_str == "|")
        result = a | b; // bitwise OR
      else if (op_str == "<<")
        result = a << b; // bitwise shift left
      else if (op_str == ">>")
        result = a >> b; // bitwise shift right
      else
        result = 0; // invalid operation code
      
      $fwrite(output_file_handle, "%d\n", result);
    end
    
    $fclose(input_file_handle);
    $fclose(output_file_handle);
    
    $display("Finished processing %0d lines of input", count);
  end
  
endmodule

module top;
  
  // Instantiate the calculator module
  calculator calc();
  
endmodule
[13:20, 4/3/2023] Abhyuday Singh: #include <bits/stdc++.h>
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
