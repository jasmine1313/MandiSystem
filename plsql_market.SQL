CREATE OR REPLACE PROCEDURE insert_data (
sno market_id.sno%TYPE,
fno market_id.fno%TYPE,
crop_id market_id.crop_id%TYPE,
mno market_m.mno%TYPE,
price market_p.price%TYPE)
IS
BEGIN
INSERT INTO market_id (sno,fno, crop_id) VALUES (sno,fno, crop_id);
INSERT INTO market_m (sno,fno, mno) VALUES (sno,fno, mno);
INSERT INTO market_p (sno,fno, price) VALUES (sno,fno, price);
COMMIT;
END;
/
begin
insert_data(1,2001,1001,3001,4800);
insert_data(2,2001,1002,3002,2500);
insert_data(3,2001,1003,3001,2000);
insert_data(4,2002,1001,3003,6000);
insert_data(5,2002,1002,3003,3000);
insert_data(6,2003,1004,3004,285);
insert_data(7,2004,1005,3005,9000);
end;
/
select * from market_id;
select * from market_m;
select * from market_p;
