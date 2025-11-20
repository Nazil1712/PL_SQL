DECLARE
   CURSOR c1 IS SELECT product_id, product_name from PRODUCTS;
   v_row c1%ROWTYPE; 
BEGIN

    OPEN c1;

        LOOP
            FETCH c1 
            INTO v_row;

            EXIT WHEN c1%NOTFOUND;

            DBMS_OUTPUT.PUT_LINE(v_row.product_id || ' : ' || v_row.product_name);
        END LOOP;

    CLOSE c1;
 
END;
/