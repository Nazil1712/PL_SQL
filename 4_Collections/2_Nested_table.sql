DECLARE
    /* Can grow dynamically and be stored in database columns. */
   TYPE t_numbers IS TABLE OF NUMBER;
   num_list t_numbers := t_numbers(10,20,30);
BEGIN
    num_list.EXTEND;
    num_list(4) := 40;

    FOR i IN 1..num_list.COUNT 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ' : ' || num_list(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(num_list.FIRST);


    num_list.DELETE(1);
    
    FOR i IN 2..num_list.COUNT 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Element ' || i || ' : ' || num_list(i));
    END LOOP;

    DBMS_OUTPUT.PUT_LINE(num_list.FIRST);

END;
/