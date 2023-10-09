create table crop_n(
crop_id int PRIMARY KEY,
crop varchar(20) NOT NULL);
create table crop_b(
crop_id int PRIMARY KEY references crop_n(crop_id),
brixscale int,
cypa int,
cdpa int);
create table farmer_n(
fno int PRIMARY KEY,
fname varchar(30) NOT NULL);
create table farmer_s(
fno int PRIMARY KEY references farmer_n(fno),
state varchar(20) NOT NULL);
create table grow_id(
sno int ,
fno int ,
crop_id int,
constraint fk10 PRIMARY KEY(sno,fno));
create table grow_q(
sno int ,
fno int ,
qty int,
constraint fk9 PRIMARY KEY(sno,fno));
create table grow_c(
sno int ,
fno int ,
cost_incurr int,
constraint fk11 PRIMARY KEY(sno,fno));
create table market_id(
sno int PRIMARY KEY,
fno int ,
crop_id int NOT NULL);
create table market_m(
sno int PRIMARY KEY references market_id(sno),
fno int ,
mno int NOT NULL);
create table market_p(
sno int PRIMARY KEY references market_id(sno),
fno int ,
price int);
create table logistics_f(
tno int PRIMARY KEY NOT NULL,
fno int);
create table logistics_cid(
tno int PRIMARY KEY references logistics_f(tno),
crop_id int);
create table logistics_m(
tno int PRIMARY KEY references logistics_f(tno),
mno int NOT NULL);
create table logistics_s(
tno int PRIMARY KEY references logistics_f(tno),
state_id int NOT NULL,
expenses int,
qty int);
create table sellstate_id(
sno int PRIMARY KEY,
state_id int NOT NULL);
create table sellstate_n(
sno int PRIMARY KEY references sellstate_id(sno),
state_name varchar(20));
create table sellstate_c(
sno int PRIMARY KEY references sellstate_id(sno),
crop_id int);
create table sellstate_s(
sno int PRIMARY KEY references sellstate_id(sno),
sellprice int NOT NULL,
qty int);
create table consumer_s(
cid int PRIMARY KEY NOT NULL,
state_id int NOT NULL);
create table consumer_c(
cid int PRIMARY KEY references consumer_s(cid),
crop_id int);
create table consumer_cp(
cid int PRIMARY KEY references consumer_s(cid),
cust_price int);
create table consumer_cq(
cid int PRIMARY KEY references consumer_s(cid),
cust_qty int);
