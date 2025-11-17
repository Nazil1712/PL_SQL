CREATE procedure "INSERTUSER2" (id in number, name in varchar2)
    IS
        -- [Declaration Section]
    BEGIN
        -- [Executable Section]
        INSERT INTO Users values(id,name);
    END;


-- Calling the procedure
BEGIN
    INSERTUSER(101,'Nazil');
END;
/