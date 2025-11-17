DECLARE
   CURSOR c_products
   IS SELECT product_id, product_name, quantity
   FROM PRODUCTS;

   v_id PRODUCTS.PRODUCT_ID%TYPE;
   v_name PRODUCTS.PRODUCT_NAME%TYPE;
   v_quantity PRODUCTS.QUANTITY%TYPE;

BEGIN
    OPEN c_products;

    LOOP

        FETCH c_products 
        INTO v_id, v_name, v_quantity;

        EXIT when c_products%NOTFOUND;
    
        DBMS_OUTPUT.PUT_LINE(v_id || ' | ' || v_name || ' | ' || v_quantity);
    END LOOP;

    CLOSE c_products;
    
END;
/


/* 

    EXPLICIT CURSOR

    Attribute	       |     Meaning

    cursor%FOUND	   |     TRUE if fetch returned a row
    cursor%NOTFOUND	   |     TRUE if no more rows
    cursor%ROWCOUNT	   |     Number of rows fetched so far
    cursor%ISOPEN	   |     TRUE if cursor is open

 */