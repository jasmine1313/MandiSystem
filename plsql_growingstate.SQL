CREATE OR REPLACE PROCEDURE insert_data (
sno grow_id.sno%TYPE,
fno grow_id.fno%TYPE,
crop_id grow_id.crop_id%TYPE,
qty grow_q.qty%TYPE,
cost_incurr grow_c.cost_incurr%TYPE)
IS
BEGIN
INSERT INTO grow_id (sno,fno, crop_id) VALUES (sno,fno, crop_id);
INSERT INTO grow_q (sno,fno, qty) VALUES (sno,fno, qty);
INSERT INTO grow_c (sno,fno, cost_incurr) VALUES (sno,fno,
cost_incurr);
COMMIT;
END;
/
begin
insert_data(1,2001,1001,10,1000);
insert_data(2,2001,1002,14,400);
insert_data(3,2001,1003,12,600);
insert_data(4,2002,1001,14,2000);
insert_data(5,2002,1002,10,800);
insert_data(6,2003,1004,16,35);
insert_data(7,2004,1005,20,2800);
end;
/
select * from grow_id;
select * from grow_q;
select * from grow_c;
