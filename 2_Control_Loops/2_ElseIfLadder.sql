SET SERVEROUTPUT ON;

DECLARE
    age number := 18;
BEGIN
    
    if (age > 18) then
        dbms_output.put_line('You are eligible to vote');
    
    elsif (age = 18) then
        dbms_output.put_line('Your age is 18');
    
    elsif (age < 18) then
        dbms_output.put_line('You are kid!');
    
    else 
        dbms_output.put_line('Please give a valid age');
    end if;    
    
    
END;    