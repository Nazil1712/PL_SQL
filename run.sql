DECLARE
   CURSOR c_my_products (p_min_price NUMBER) 
   IS
   SELECT product_id, product_name, price
   FROM PRODUCTS
   WHERE PRICE > p_min_price;

   v_counter NUMBER := 1;

BEGIN

    FOR rec IN c_my_products(2000) 
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                'Product ' || v_counter || ' : '  || rec.product_name || ' | ' ||
                'Price : ' || rec.price
            );
            v_counter := v_counter + 1;
        END LOOP;

END;
/


SELECT * FROM PRODUCTS;