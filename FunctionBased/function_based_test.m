function tests = function_based_test
tests = functiontests(localfunctions);
    
end 


function setupOnce(testObj)  % do not change function name
% set a new path, for example
testObj.TestData.origPath = pwd;
cd .. 
addpath("tools")
end

function teardownOnce(testObj)  % do not change function name
% change back to original path, for example
rmpath("tools")
cd(testObj.TestData.origPath)
end


function test1_IsRight(testObj)
    A = 1;
    B = 2;
    C = rd_addition(A,B);
    assert(C == 3, "Wrong Result")
end 

function test2_IsPositive(testObj)
    A = 1;
    B = 2;
    C = rd_addition(A,B);
    assert(C >= 0, "Not Positive")
end 

function test3_IsWrong(testObj)
    A = 1;
    B = 2;
    C = rd_addition(A,B);
    assert(C == 2, "Wrong Result")
end 

