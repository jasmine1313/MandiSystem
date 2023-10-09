CREATE OR REPLACE PROCEDURE insert_data (
cid crop_n.crop_id%TYPE,
cname crop_n.crop%TYPE,
brix crop_b.brixscale%TYPE,
cy crop_b.cypa%TYPE,
cd crop_b.cdpa%TYPE)
IS
BEGIN
INSERT INTO crop_n (crop_id, crop) VALUES (cid,cname);
INSERT INTO crop_b (crop_id, brixscale,cypa,cdpa) VALUES
(cid,brix,cy,cd);
COMMIT;
END;
/
begin
insert_data(1001,'Rice',15,1600,2700);
insert_data(1002,'Wheat',18,1400,2800);
insert_data(1003,'Maize',14,1800,2400);
insert_data(1004,'Sugarcane',17,1700,2600);
insert_data(1005,'Tea',20,1500,2900);
end;
/
select * from crop_n;
select * from crop_b;
