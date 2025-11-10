SET SERVEROUTPUT ON;
DECLARE
    num1 number := 45;
    num2 NUMBER := 78;
BEGIN
    DBMS_OUTPUT.PUT_LINE('num1 := ' || num1);
    DBMS_OUTPUT.PUT_LINE('num2 := ' || num2);
 
    -- Nested Declare
    DECLARE
        num3 NUMBER := 17;
        num4 NUMBER := 20;

    -- Neseted Begin
    BEGIN
        DBMS_OUTPUT.PUT_LINE('num 3 := ' || num3);
        DBMS_OUTPUT.PUT_LINE('num 4 := ' || num4);
    END;

    /* 
        Can't access local variable here
     */
    -- DBMS_OUTPUT.PUT_LINE('num3 accessing globally := ' || num3);
    -- DBMS_OUTPUT.PUT_LINE('num4 accessing globally := ' || num4);
END;