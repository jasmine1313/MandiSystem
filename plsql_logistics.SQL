CREATE OR REPLACE PROCEDURE insert_data (
tno logistics_f.tno%TYPE,
fno logistics_f.fno%TYPE,
crop_id logistics_cid.crop_id%TYPE,
mno logistics_m.mno%TYPE,
state_id logistics_s.state_id%TYPE,
expenses logistics_s.expenses%TYPE,
qty logistics_s.qty%TYPE)
IS
BEGIN
INSERT INTO logistics_f (tno,fno) VALUES (tno,fno);
INSERT INTO logistics_cid (tno,crop_id) VALUES (tno,crop_id);
INSERT INTO logistics_m (tno,mno) VALUES (tno,mno);
INSERT INTO logistics_s (tno,state_id,expenses,qty) VALUES
(tno,state_id,expenses,qty);
COMMIT;
END;
/
begin
insert_data(10,2001,1001,3001,5001,2500,5);
insert_data(11,2001,1001,3001,5002,2200,5);
insert_data(12,2001,1002,3002,5002,2600,14);
insert_data(13,2001,1003,3001,5003,2400,12);
insert_data(14,2002,1001,3003,5004,2800,14);
insert_data(15,2002,1002,3003,5002,2200,6);
insert_data(16,2002,1002,3003,5004,3200,4);
insert_data(17,2003,1004,3004,5001,2500,16);
insert_data(18,2004,1005,3005,5002,2200,14);
insert_data(19,2004,1005,3005,5001,2500,6);
end;
/
select * from logistics_f;
select * from logistics_cid;
select * from logistics_m;
select * from logistics_s;
