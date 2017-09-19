%Looks good. See minor comments below. 1/1.

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

random_num_file='random_number_file.txt';
fid=fopen(random_num_file,'w');
rand_num1=rand(10,13);
fprintf(fid,'Random numbers 1\n');
dlmwrite('random_number_file.txt',rand_num1,'-append');
fid=fopen(random_num_file,'a');
fprintf(fid,'Random numbers 2\n');
rand_num2=rand(9,7);
dlmwrite('random_number_file.txt',rand_num2,'-append');

myfile=fopen(random_num_file, 'r');
first_line=fgetl(myfile);
line1=fgetl(myfile);
string_line=strsplit(line1, ','); 
num_line=cellfun(@str2num, string_line)
%AW: this works fine. Note there is no need to store the first_line variable since you don't use it. 

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 
sum_function(rand(1,20))
function logical = sum_function(i)
    logical = sum(i)>10;
end
%AW: this is also ok, but note that inside your function you have overwritten the builtin keyword logical. 
