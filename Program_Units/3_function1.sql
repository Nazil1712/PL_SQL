-- Fucntion declaration / Creation
CREATE FUNCTION adder(n1 in number, n2 in number) 
RETURN number -- We need to define the return type here
IS
    -- [Declaration Section]
    n3 number; 
BEGIN
    -- [Executable Section]
    n3 := n1 + n2;
    return n3; -- We must need to return
END;
/


-- Calling the function
DECLARE
   result number;
BEGIN
    result := ADDER(45,15);
    DBMS_OUTPUT.PUT_LINE('Addition is : ' || result);
END;
/