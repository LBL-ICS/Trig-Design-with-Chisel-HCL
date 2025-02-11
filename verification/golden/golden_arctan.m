%  * This source file contains a single-precision floating-point adder results
%  *
%  * Author: Xiaokun Yang and Dinia Mosuli, University of Houston Clear Lake 
%  * Date: Nov 2024
%  *
%  * For more information, see the project website at:
%  * https://sceweb.sce.uhcl.edu/xiaokun/OpenIC/
%  * 
y_input_file = fopen('rtl-y-input.txt', 'w');
theta_output_file = fopen('rtl-atan-output.txt', 'w');
for i= 1:1000
        %theta is hexidecimal input used for RTL simulation
        %maximum: (7F7FFFFF)16=(4294967295)10
        mxval=3.4028235*10^20
        mnval=-3.4028235*10^20
        rand_y=single(mnval+rand*(mxval-mnval))
        %rand_y=1.0
        y_hex=num2hex(rand_y)
         
        fprintf(y_input_file, '%08s\n', y_hex);
        
        theta_output=single(atan(rand_y))
        theta_hex=num2hex(theta_output)
        fprintf(theta_output_file, '%08s\n', theta_hex);
end
fclose(theta_output_file);
fclose(y_input_file);