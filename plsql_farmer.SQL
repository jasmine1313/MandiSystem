CREATE OR REPLACE PROCEDURE insert_data (
fno farmer_n.fno%TYPE,
fname farmer_n.fname%TYPE,
state farmer_s.state%TYPE)
IS
BEGIN
INSERT INTO farmer_n (fno, fname) VALUES (fno, fname);
INSERT INTO farmer_s (fno, state) VALUES (fno, state);
COMMIT;
END;
/
begin
insert_data(2001,'Ram','Delhi');
insert_data(2002,'Rajendra','Punjab');
insert_data(2003,'Monu','Uttar Pradesh');
insert_data(2004,'Sonu','Assam');
end;
/
select * from farmer_n;
select * from farmer_s;
