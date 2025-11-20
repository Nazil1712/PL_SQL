DECLARE
   v_prod PRODUCTS%ROWTYPE;

BEGIN

    SELECT * 
    INTO v_prod
    FROM PRODUCTS
    WHERE product_id = 1;


    DBMS_OUTPUT.PUT_LINE('Product : ' || v_prod.product_name); 

 
END;
/