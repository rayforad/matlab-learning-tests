A = 5;
B = 6;

expResult = 11;
wrongResult = 10;

%% Test 1 : right result 
C = rd_addition(A,B);
assert(C == expResult,"Wrong result")

%% Test 2: is possible 
C = rd_addition(A,B);
assert(C >= 0, "Not positive")

%% Test 3: Wrong result  
C = rd_addition(A,B);
assert(C == wrongResult, "Wrong result")

