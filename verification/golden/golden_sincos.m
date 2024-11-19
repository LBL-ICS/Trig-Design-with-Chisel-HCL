%  * This source file contains a single-precision floating-point adder results
%  *
%  * Author: Xiaokun Yang and Dinia Mosuli, University of Houston Clear Lake 
%  * Date: Nov 2024
%  *
%  * For more information, see the project website at:
%  * https://sceweb.sce.uhcl.edu/xiaokun/OpenIC/
%  * 
theta_input_file = fopen('rtl-theta-input.txt', 'w');
cos_output_file = fopen('rtl-cos-output.txt', 'w');
sin_output_file = fopen('rtl-sin-output.txt', 'w');
for i= 1:1000
        %theta is hexidecimal input used for RTL simulation
        %maximum: (7F7FFFFF)16=(4294967295)10
        %mxval=3.4028235*10^20
        %mnval=-3.4028235*10^20
        mxval=-100*pi
        mnval=100*pi
        rand_theta=single(mnval+rand*(mxval-mnval))
        %rand_theta=1000000*pi+pi/6
        theta_hex=num2hex(rand_theta)
         
        fprintf(theta_input_file, '%08s\n', theta_hex);
        
        sin_output=single(sin(rand_theta))
        cos_output=single(cos(rand_theta))
        sin_hex=num2hex(sin_output)
        cos_hex=num2hex(cos_output)
        fprintf(cos_output_file, '%08s\n', cos_hex);
        fprintf(sin_output_file, '%08s\n', sin_hex);
end
fclose(theta_input_file);
fclose(cos_output_file);
fclose(sin_output_file);



