create database phonepe;
use phonepe;
show tables;
create table to_phone_number (id int , name varchar(50)primary key, phone_number bigint, amount_sent int, amount_received int);
alter table to_phone_number add foreign key(phone_number) references mobile_recharge(phone_number);
set autocommit=0;
desc to_phone_number;
insert into to_phone_number values (1,"Naveen",9347739770,1000,500),(2,"omkar",8152374884,800,400),(3,"nagaender",67474749034,600,500),(4,"sanjay",7547648934,1500,1000),
(5,"pavan",7377597093,2000,1000),(6,"ram",7377545093,200,100),(7,"baby",7374567093,8000,6000),(8,"nani",9567597093,6000,3000),
(9,"kumar",8177597093,10000,5000),(10,"vijay",7377597767,1800,900);
select* from to_phone_number;
savepoint a1;

insert into to_phone_number values (11,"ravana",7375646093,100,50),(12,"raju",97545597093,1400,700),
(13,"buden",97467597093,6800,3400),(14,"pavi",7347597093,65000,3250),(15,"ramanji",7377597345,6000,10000),(16,"hira",7377593456,6000,12000),
(17,"kajal",8657597093,7000,9000),(18,"ntr",7377564093,12000,3000),(19,"manju",9547597093,7000,15000),(20,"thamudu",73775975640,3400,7600);
savepoint a2;
commit;

insert into to_phone_number values (21,"prema",7777597093,7000,1000),(22,"pavani",7377597093,3000,2000),(23,"brrow",7775970543,9000,7000),(24,"arrow",6547597093,2000,8000),
(25,"red",9231597093,20000,11000),(26,"pushupa",8977597093,5000,8000),(27,"cat",9756597093,3000,9000),(28,"balu",9377597093,2400,12000),
(29,"mahesh",7377597876,20000,6000),(30,"kushi",7377597093,10000,3000),(31,"pooja",7377594564,4000,6000),(32,"talari",7377597093,300,100),
(33,"siddu",8547597093,7000,3000),(34,"varu",7378597093,900,9000),(35,"roja",7657597093,2000,200),(36,"srinu",9377597093,3000,50),
(35,"vanithi",9477597093,2000,1000),(38,"radha",7377597093,500,3000),(39,"mani",7377597093,20,5000),(40,"durga",7677597093,4000,800),
(41,"papa",8767597093,5000,3000),(42,"boy",5477597093,6500,1000),(43,"yougender",7377597093,9000,2000),(44,"ashok",9876597093,8000,100),
(45,"naga",9327597093,8000,7000),(46,"amer",85477597093,8000,3000),(47,"vamshi",7377597093,200,100),(48,"royal",9277597093,7000,3000),
(49,"sheshu",7477597091,4000,100),(50,"indhu",94377597093,20000,10000);
savepoint a3;
select * from to_phone_number order by id asc;
update to_phone_number set name="nagendra" where id=3;
alter table to_phone_number drop column amount_sent;
-- adding constraints
alter table to_phone_number drop column amount_received;
alter table to_phone_number add amount_received int default(900) after amount_sent;
alter  table to_phone_number modify id int not null;
alter table to_phone_number add amount_sent int default(500) after phone_number;
desc to_phone_number;
alter table to_phone_number modify phone_number bigint default(20);
-- joins 
select * from to_phone_number left join to_bank on to_phone_number.name=to_bank.name;
select * from to_phone_number right join to_bank on to_phone_number.name=to_bank.name;
select * from to_phone_number left join to_bank on to_phone_number.name=to_bank.name
union
select * from to_phone_number right join to_bank on to_phone_number.name=to_bank.name;
-- views
create view v1 as select id from to_phone_number;
create view v2 as select name,amount_sent from to_phone_number;
create or replace view v2 as select name,id from to_phone_number;
select * from v2;
select * from v1;
-- indexes
create index tpl on to_phone_number (name);
show indexes in to_phone_number;
select * from to_phone_number use index(tpl);
create index thops on to_phone_number (id);
show indexes in to_phone_number;
drop index thops on to_phone_number;
create unique index tech on to_phone_number(name);
show indexes in to_phone_number;
create index thopstech on to_phone_number (amount_sent,amount_received);
show indexes in to_phone_number;
call nani();
desc to_phone_number;




 
 





create table to_bank (id int, bank_name varchar(50) , account_number bigint, IFSC_CODE varchar(50), name varchar(50), upi_id varchar(50));
alter table to_bank add primary key(id);
alter table to_bank add foreign key(name) references to_phone_number(name);
alter table to_bank add foreign key(account_number) references credit_card(credit_card_number);
alter table to_bank add foreign key(bank_name) references fastag(fastag_bank_name);
desc to_bank;
insert into to_bank values (1,"CANARA",120010100000,"CRBN1200010","SANJAY","9391373146@YBL"),
(2,"SBI",1200101023461,"SBINOOO575","OMKAR","9123383737@YBL"),
(3,"KOTAKKA",280292827844,"KOTI009732","NAVEEN","9174653422@RBL"),
(4,"MAHENDRA_BANK",2000345376459,"MAHI000876","NAGENDRA","917326352@SBL"),
(5,"ANDRA",120010128823,"CRBN1200010","MAHI","9176554321@UPL"),
(6,"BANK_OF_BARODA",120030938373,"CRBN098765","GIRI","6300924400@IPL"),
(7,"INDRA",120988735353,"UPRN098809","PRASHANTH","9107839373@SPL"),
(8,"SOCITY_BANK",120983732786,"RNBR9809484","MAHESH","9391143785@456"),
(9,"CANARA",120010100001,"CRBN1200010","HIR","93913731265@YBL"),
(10,"SBI",12001010239746,"SBINOOO575","RAJESH","91233837876@RBL");
set foreign_key_checks = 0;
set autocommit=0;
savepoint b1;
insert into to_bank values (11,"KOTAKKA",280292827811,"KOTI009787","NAVI","917465346537@RBL"),
(12,"MAHENDRA_BANK",2000345376657,"MAHI0008875","NAVEEN","9173263097@SBL"),
(13,"ANDRA_BANK",120010128247,"CRBN1200010","VARUN","91765540847@UPL"),
(14,"BANK_OF_BARODA",1200309309876,"CRBN0987098","RAMIREDDY","6300924401@IPL"),
(15,"BANK_0F_AMERICA",120988735456,"IPNM098809","PRASHANTHI","9107839374@SPL"),
(16,"HSBC",120983732797,"RNBR98094567","RANI","9391143785@RBL"),
(17,"AXIS",1209928732782,"RENF098080","RENUKA","93928387383@UPL"),
(18,"CANARA",120010100123,"CRBN12001321","RAVLI","93913731456@YBL"),
(19,"SBI",12001010234371,"SBINOOO575","RAMU","91233837564@YBL"),
(20,"KOTAKKA",2802928276547,"KOTI009732","NAVANI","917465342746@RBL");
commit;
savepoint b2;
insert into to_bank values (21,"MAHENDRA_BANK",2000345370987,"MAHI000876","NAGINI","917326897@SBL"),
(22,"UNION_BAK",1200828723298,"CRBN1200010","MAHIBABU","91765543207@UPL"),
(23,"BANK_OF_BARODA",1200309382341,"CRBN098765","GIRISH","63009241453@IPL"),
(24,"PUNJAB_NATIONAL_BANK",90988730164,"UPRN098888","PRASHANTH_REDDY","9107809808@SPL"),
(25,"SOCITY_BANK",120983769640,"RNBR9809484","MAHARSHI","93911409743@UPL"),
(26,"CANARA",120010112431,"CRBN1200011","HIRIKA","93913731000@YBL"),
(27,"IDBI",12001010239709,"IDBINOOO576","RAKESH","91233830126@RBL"),
(28,"CENTRAL_BANK",280292827867,"ALLA009787","NAVITHA","917465346537@MPL"),
(29,"YES_BANK",21321456790,"YESB0009875","YADAV","8703263097@SBL"),
(30,"BANDAN_BANK",1200101280987,"CRBN12000760","AMMU","88765540847@UPL"),
(31,"RESERVE_BANK",293309309876,"BTRNN0987098","ARTHI","9102924401@IPL"),
(32,"INDIAN_BANK",209887876232,"UPMN098809","LAKHMI","91078309347@SPL"),
(33,"HSBC",120983732756,"RNBR98094657","KEERTHI","9391143172@RPL"),
(34,"AXIS",120992873556,"RENF098O08768","CHANDANA","9392838763434@KPL"),
(35,"CANARA",120010198765,"CRBN1200010","SREEYA","93913738673@YBL"),
(36,"SBI",1200101039169,"SBIN0986","ARTHI_YADAV","91233837987@YBL"),
(37,"KOTAKKA",3087292827844,"KOTI009732","NAVEEN_YADAV","91746534743@RBL"),
(38,"MAHENDRA_BANK",1026347682723,"MAHI0004328","KIRAN","9173208786@SBL"),
(39,"ANDRA_BANK",1200101274653,"CRBN12000309","VENKATESH","91765565765@UPL"),
(40,"CITY_BANK",1209830948549,"CRBN09876784","SIRISH","74356874323@IPL"),
(41,"UCO_BANK",77346873535,"UPRN09987653","SHIRISHA","9823498725@SPL"),
(42,"SBI",1200098676556,"RNBR98098754","MAHENDRA","9391148674354@KPL"),
(43,"CANARA",12989309023,"CRBN039298","RAMANA","727127211@YBL"),
(44,"AXIX",223232732347,"CPMN28237434","RAKHI","9187866456@RBL"),
(45,"BANK_BARODA",21728372397,"BBDD723644","UDAY","9834982398@SBL"),
(46,"KARNATAKA_BANK",276566545554,"CPYR347232321","NIKHLESH","684066223@upl"),
(47,"idbi_bank",1209338738837,"CRBN183747","ramesh","763476343@YBL"),
(48,"union_bank",22323273847378,"CPMN282374637","prabhas","91878684735@RBL"),
(49,"fedaral_bank",217283763453,"BBDD723645","ntr","98349823874@SBL");
savepoint b3;
alter table to_bank drop column ifsc_code;
desc to_bank;
alter table to_bank add ifsc_code varchar(50) default("KKBK0007873") after account_number;
update to_bank set name="nagendra" where id=3;
select * from to_bank;
-- adding constraints
alter  table to_bank modify id int not null;
alter table to_bank modify account_number bigint unique;
desc to_bank;
alter table to_bank modify upi_id varchar(50) default(1234);
alter table to_bank modify id int check(id<50);
desc to_bank;
-- joins 
select * from to_phone_number inner join to_bank on to_phone_number.name=to_bank.name;
select * from to_phone_number left join to_bank on to_phone_number.name=to_bank.name;
select * from to_phone_number right join to_bank on to_phone_number.name=to_bank.name;
select * from to_phone_number left join to_bank on to_phone_number.name=to_bank.name
union
select * from to_phone_number right join to_bank on to_phone_number.name=to_bank.name;
-- views
create view b1 as select id from to_bank;
create view b2 as select name,bank_name from to_bank;
create or replace view b2 as select name,id from to_phone_number;
select * from b2;
select * from b1;
select * from to_bank;
-- indexes
create index ipl on to_bank (account_number);
show indexes in to_bank;
select * from to_bank use index(ipl);
create index ipl2 on to_bank (ifsc_code);
show indexes in to_bank;
drop index ipl on to_bank;
create unique index ipl3 on to_bank(id);
show indexes in to_bank;
create index ipl4 on to_bank (account_number,name);
show indexes in to_bank;
call sanjay();
desc to_bank;




















create table mobile_recharge(id int, name varchar(50), operator_name varchar(50), circle_name varchar(50), recharge_amount tinyint, phone_number bigint );
alter table mobile_recharge modify recharge_amount int;
alter table mobile_recharge add primary key(phone_number);
alter table mobile_recharge add foreign key(id) references to_bank(id);
set foreign_key_checks=0;
desc mobile_recharge;
set autocommit=0;
insert into mobile_recharge values
(1,"omkar","jio","AP",666,6943724832),
(2,"naveen","airtel","AP",720,6438758374),
(3,"sanjay","jio","AP",720,9854753498),
(4,"nagendra","jio","AP",666,6864243276),
(5,"amar","BSNL","KA",440,9374782744),
(6,"ravi","jio","UP",170,6738462349),
(7,"nari","MTNL","DELHI",490,8974587458),
(8,"ashok","airtel","ASSAM",230,6437463643),
(9,"raja","vi","AP",549,6464546556),
(10,"ajay","jio","AP",670,7476453748);
savepoint c1;
insert into mobile_recharge values (11,"madhu","airtel","MP",1200,6374385356),
(12,"A","jio","KERALA",3200,8343247623),
(13,"arun","BSNL","MUMBAI",720,8756743655),
(14,"arjun_reddy","jio","AP",450,6847632433),
(15,"narayan","airtel","KA",749,6244834764),
(16,"dev","jio","UP",634,6783267333),
(17,"ram","vi","ASSAM",570,7674637426),
(18,"navya","jio","TELANGANA",560,7634637467),
(19,"hari","airtel","AP",430,8746274624),
(20,"kiran","BSNL","KA",690,7873262378);
savepoint c2;
commit;
insert into mobile_recharge values (21,"kumar","jio","AP",760,7624332564),
(22,"ravi_kumar","airtel","UP",560,8756346536),
(23,"teja","jio","AP",540,7643654653),
(24,"prasanth","airtel","KA",700,6432746354),
(25,"tej","jio","UP",560,7234657324),
(26,"vani","airtel","AP",459,8264623476),
(27,"raja_shekar","jio","AP",870,7362754364),
(28,"ravi_teja","airtel","ASSAM",560,7254753243),
(29,"kiran_kumar","jio","AP",530,7354625343),
(30,"b","BSNL","DELHI",546,8364762348),
(31,"brath","vi","TELANGANA",675,7546575374),
(32,"bavya","airtel","AP",540,6325465324),
(33,"umadevi","jio","KA",657,6523436545),
(34,"deepa","jio","AP",890,8763476324),
(35,"divya","BSNL","KA",670,8276347842),
(36,"nandhini","jio","AP",548,7675234654),
(37,"reddy_omkar","airtel","AP",450,7654653436),
(38,"budden","jio","AP",746,7653462234),
(39,"pavan","BSNL","AP",654,6565635635),
(40,"nayan","airtel","TELANGANA",653,7647564544),
(41,"rajesh","jio","UP",677,6536425426),
(42,"narayan_reddy","jio","GUJARAT",547,7653652645),
(43,"shankar","airtel","HARYANA",567,7646356457),
(44,"chekri","jio","jammu_kashmir",567,7674536536),
(45,"shankar_reddy","jio","AP",765,7624656456),
(46,"nari_reddy","airtel","AP",657,7653765426),
(47,"hari_kumar","jio","KA",674,7676455244),
(48,"sai_reddy","airtel","KA",874,7646564534),
(49,"indu_reddy","jio","AP",565,7653475244),
(50,"dileep","BSNL","UP",677,6735244553),
(51,"ram_reddy","airtel","KA",465,7645364536),
(52,"madhan","jio","KA",654,7653246523),
(53,"praven","BSNL","ASSAM",764,7364653654),
(54,"ragu","airtel","DELHI",767,7643564634),
(55,"thopstech","jio","KA",675,7654653354),
(56,"mahesh","airtel","AP",674,7777457455),
(57,"mahesh_reddy","jio","GUJARAT",645,6666666355),
(58,"mahesh_kumar","airtel","ASSAM",765,7625342375),
(59,"reddy_mahesh","BSNL","KERALA",644,7654653634),
(60,"nayava_reddy","airtel","ASSAM",673,7653646626),
(61,"ram_kumar","jio","KERALA",673,9879863762),
(62,"nagendr_reedy","jio","AP",876,7674563545),
(63,"nagaa","vi","MP",7645,7635264544),
(64,"nagarjuna","airtel","JAMMU_KASHMIR",645,7777653652),
(65,"raja_reddy","jio","AP",565,7653546354),
(66,"praven_reddy","airtel","UP",654,7632546532),
(67,"reja_shekar_reddy","jio","AP",654,6536526452),
(68,"teja_kumar","jio","ASSAM",7634,7365467235),
(69,"a_reddy","airtel","DELHI",645,6354632546),
(70,"ram_kumar_reddy","jio","AP",654,7643653655),
(71,"boya_naveen","airtel","AP",645,7654366534),
(72,"naveen_reddy","jio","KA",463,8763284732),
(73,"sanjay_krishana","airtel","UP",3200,7253646324),
(74,"sanjay_reddy","jio","AP",765,6766346445),
(75,"sanjay_kumar","airtel","AP",764,7326546234),
(76,"nagendar_kumar","jio","DELHI",745,8736486487),
(77,"omkar_kumar","jio","AP",764,7653732463),
(78,"vuyyala_omkar","jio","KA",984,8237647862),
(79,"reddy_omkar_vuyyala","BSNL","ASSAM",764,7643564365),
(80,"ravi_reddy","jio","KERALA",734,7263456325),
(81,"c","jio","AP",365,8763485247),
(82,"d","airtel","KERALA",734,7325423654),
(83,"e","BSNL","AP",764,7325462348),
(84,"f","vi","UP",764,7235463254),
(85,"g","jio","AP",875,8274676433),
(86,"h","airtel","TELANGANA",635,7653254367),
(87,"i","jio","KA",7435,7254632564),
(88,"j","vi","KA",874,8723648763),
(89,"k","BSNL","DELHI",823,7653425343),
(90,"l","jio","UP",732,8768763427),
(91,"m","vi","KA",743,8748736423),
(92,"n","BSNL","UP",837,8274673644),
(93,"o","airtel","MP",674,8734627645),
(94,"p","vi","ASSAM",743,8646364644),
(95,"q","BSNL","UP",473,9874834574),
(96,"arun_reddy","jio","MP",874,8376457646),
(97,"arun_kumar_reddy","airtel","KA",653,7647656434),
(98,"varun","vi","AP",764,9827398473),
(99,"varun_kumar","KERALA","KA",763,8723687463),
(100,"varun_reddy","jio","MP",874,9839647826);
savepoint c3;
desc mobile_recharge;
select*from mobile_recharge order by id asc;
-- adding constraints
alter  table mobile_recharge modify recharge_amount int not null;
alter table mobile_recharge modify phone_number bigint unique;
desc mobile_recharge;
alter table mobile_recharge modify  name varchar(50) default("Nani");
alter table mobile_recharge modify id int check(id<101);
desc to_bank;
-- joins 
select * from mobile_recharge inner join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
select * from mobile_recharge left join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
select * from mobile_recharge right join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
select * from mobile_recharge left join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number
union
select * from mobile_recharge right join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
desc mobile_recharge;
-- views
create view c1 as select id from mobile_recharge;
create view c2 as select name,phone_number from mobile_recharge;
create or replace view c2 as select recharge_amount from mobile_recharge;
select * from c2;
select * from c1;
select * from mobile_recharge;
-- indexes
create index abc on mobile_recharge (name);
show indexes in mobile_recharge;
select * from mobile_recharge use index(abc);
create index def on mobile_recharge (recharge_amount);
show indexes in mobile_recharge;
drop index def on mobile_recharge;
create unique index ghi on mobile_recharge(id);
show indexes in mobile_recharge;
create index jkl on mobile_recharge (operator_name,name);
show indexes in mobile_recharge;
call naveen();
desc mobile_recharge;











create table DTH_bill (id int, provider_name varchar(50) , phone_number bigint, recharge_amount tinyint, subscriber_id bigint);
alter table dth_bill modify recharge_amount int;
alter table dth_bill add primary key(id);
alter table dth_bill add foreign key(phone_number) references mobile_recharge(phone_number);
desc dth_bill;
set autocommit=0;
set foreign_key_checks=0;
insert into dth_bill values(1,"airtel",9347739770,240,3028820101),(2,"tata play",7865438976,440,2065435642),
(3,"sun direct",9756543875,280,20347756543),(4,"d2h",7654356578,1000,3064587562),(5,"dish tv",9054654364,540,2054366797),
(6,"tv",6578432943,280,5674843567),(7,"dd free dish",6578483458,700,2034567543),(8,"zing digital",904532346,1100,3064578993),
(9,"colors",8567443526,1200,40563764573),(10,"dtv",6785534256,1500,20345678443);
savepoint d1;
insert into dth_bill values (11,"jio dth",8564753225,800,5643823833),
(12,"star",9876543234,250,4756577833),(13,"airtel",8019147034,299,46337282828),(14,"tataplay",7364542387,999,1083564442),
(15,"sundirect",8345637365,399,3054321230),(16,"videocon",6548493453,699,3054374543),(17,"dish",6543276554,230,3247658764),
(18,"independent",8234565494,499,20543675431),(19,"freedish",65437438352,655,3456547833),(20,"zingdth",9076543452,233,20435645327);
commit;
savepoint d2;
insert into dth_bill values(21,"coloerstv",6543263465,677,3065431276),(22,"jiostore",7345625343,777,30456346647),(23,"starsopetes",6543234565,888,3054678654),
(24,"bharti airtal",74653343553,444,40546533563),(25,"tv dth",6543567876,989,43256787675),(26,"sun",8765434565,1777,56443256),
(27,"playe",765456894,288,45343256364),(28,"viov",865443533445,799,546775433),(29,"vagitabil",85654637634,899,45343625536),
(30,"airtal tv",67543544344,520,54654325466),(31,"tv dth",6854345656,666,5065743247),(32,"ditial dth",9876543556,599,75653356345),
(33,"dth bill",68564343443,755,3454632443),(34,"tvdth",98677675587,900,4536567488),(35,"tata bill",82345637398,566,45376721623),
(36,"tata fly",7866546377,366,4533957857),(37,"tata sky",84454563635,857,4325665433),(38,"sundata",65745383646,766,45534433424),
(39,"indepentdent",76645455436,300,54435343646),(40,"airtal dish",67544343564,599,53343234533),
(41,"sun dth",7867686768,675,544243424424),(42,"sky",8765435667,633,3433566775342),(43,"star city",654768998554,788,54324566424),
(44,"dthsky",9877665765,6555,345544456663),(45,"tatadth",98674546452,887,54320543223),(46,"sun diracate",788654446545,555,64665433366),
(47,"airtal playn",7865498755,1700,4054342354),(48,"tata com",7654367888,444,43222343322),(49,"tatasky",76543876546,877,40543243254),
(50,"tataply",6754387657,1999,432542314343);
savepoint d3;
select * from dth_bill;
-- adding constraints
alter  table dth_bill modify recharge_amount int not null;
alter table dth_bill modify phone_number bigint unique;
desc mobile_recharge;
alter table dth_bill modify  provider_name varchar(50) default("Naveen");
alter table dth_bill modify id int check(id<101);
-- joins 
select * from mobile_recharge left join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
select * from mobile_recharge inner join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;

select * from mobile_recharge right join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
select * from mobile_recharge left join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number
union
select * from mobile_recharge right join dth_bill on mobile_recharge.phone_number=dth_bill.phone_number;
desc mobile_recharge;
-- views
create view d1 as select id from dth_bill;
create view d2 as select provider_name,phone_number from dth_bill;
create or replace view d2 as select recharge_amount from dth_bill;
select * from d2;
select * from d1;
select * from dth_bill;
-- indexes
create index mno on dth_bill (provider_name);
show indexes in dth_bill;
select * from dth_bill use index(mno);
create index pqr on dth_bill (recharge_amount);
show indexes in dth_bill;
drop index mno on dth_bill;
create unique index stu on dth_bill(id);
show indexes in dth_bill;
create index vwx on dth_bill (provider_name,subscriber_id);
show indexes in dth_bill;
call Omkar();
desc dth_bill;









create table electricity (id int, billers_name varchar(50), state_name varchar(50), customer_id bigint, bill_amount int, mode_of_payment char);
alter table electricity modify mode_of_payment varchar(50);
alter table electricity add primary key(mode_of_payment);
alter table electricity add foreign key(id) references dth_bill(id);
desc electricity;
set autocommit=0;
set foreign_key_checks=0;
insert into electricity values(1,"TSECL_Tripura","AP",635472657564,160,"phon_pay"),
(2,"estern_power_ditribution_company","andrapradesh",672672657534,279,"google_pay"),
(3,"adani_electri_city","mumbai",54354354365,650,"pytm"),
(4,"ajmer_vidyut","nijam",765374564,534,"phone_pay"),
(5,"assam_power_distribution","AP",347627364646,765,"GOOGL_PAY"),
(6,"BESCOM","BENGLORE",64575476465,987,"AMOZEN_PAY"),
(7,"BEST","MUMABAI",864734667376,870,"PYT"),
(8,"BSES","DELHI",46543764746,90,"p_pay"),
(9,"cesc","ap",63565625465,40,"g_pay"),
(10,"dgvcl","dakshin_gujarat",7635472565,70,"a_pay");
savepoint e1;
insert into electricity values(11,"rajdhani_prepaid_meter_recharge","delhi",6534652465,111,"pone_pay"),
(12,"estern_power_ditribution","andra_pradesh",672672667576,465,"g_p"),
(13,"daksin_harayan_bijili_vitran","nijam",76346247565,121,"pt"),
(14,"department_of_power","nagaland",2656323434,361,"phone_py"),
(15,"department_of_power","arunchal_pradesh",3476273434,123,"g_PY"),
(16,"electircic_department","BENGLORE",64575476465,987,"paytm"),
(17,"gift_power_company","MUMABAI",8647346655,120,"PTM"),
(18,"goa_elecriccity_department","DELHI",6347236276,100,"phne_pay"),
(19,"gulbaga_electricity_supply","kerala",434324354,34,"p_"),
(20,"indian_powe","ap",7635472565,70,"amozon_pay");
savepoint e2;
commit;
select * from electricity order by id;
-- adding constraints
alter  table electricity modify  bill_amount int not null;
alter table electricity modify id int unique;
desc mobile_recharge;
alter table electricity modify  customer_id varchar(50) default("Omkar");
alter table electricity modify id int check(id<21);
-- joins 
select * from electricity inner join credit_card on electricity.mode_of_payment=credit_card.id; 
select * from electricity left join credit_card on electricity.mode_of_payment=credit_card.id;
select * from electricity right join credit_card on electricity.mode_of_payment=credit_card.id;
select * from electricity left join credit_card on electricity.mode_of_payment=credit_card.id
union
select * from electricity right join credit_card on electricity.mode_of_payment=credit_card.id;
desc electricity;
-- views
create view e1 as select id from electricity;
create view e2 as select billers_name,mode_of_payment from electricity;
create or replace view e2 as select bill_amount  from electricity;
select * from e2;
select * from e1;
select * from electricity order by id;
-- indexes
create index fun on electricity (billers_name);
show indexes in electricity;
select * from electricity use index(fun);
create index fan on electricity (mode_of_payment);
show indexes in electricity;
drop index fan on electricity;
create unique index fox on electricity(id);
show indexes in electricity;
create index the on electricity (customer_id, bill_amount);
show indexes in electricity;
call lenovo();
desc electricity;
select count(*) as column_count from information_schema.columns 
where table_schema = "phonepe" 
and table_name = "electricity";










create table credit_card (id int, credit_card_name varchar(50), credit_card_number bigint, expiry_date date , cvv int, bill_amount int);
alter table credit_card add primary key(credit_card_number);
alter table credit_card add foreign key(id) references to_bank(id);
alter table credit_card add foreign key(expiry_date) references loan_payment(due_date);
desc credit_card;
set autocommit=0;
set foreign_key_checks=0;
select * from credit_card;
insert into credit_card values(1,"sbi",7657575787653435,"2020-10-25",432,456),
(2,"canara",765456897655435,"2023-12-22",756,1000),
(3,"axix",6543215678534562,"2024-11-24",534,2001),
(4,"allahabad_bank",8767876543675676,"2022-12-20",754,1198),
(5,"andra_bank",7656453423345465,"2025-10-21",234,1112),
(6,"bank_of_baroda",9876543565478765,"2025-09-23",654,9878),
(7,"bank_of_india",7636565365636353,"2025-02-12",765,6545),
(8,"bank_maharastra",7896543454345654,"2024-08-26",654,6546),
(9,"city_union_bank",9878678645646546,"2024-09-23",435,6545),
(10,"icici",7657546764546765,"2023-04-23",812,4327);
savepoint f1;
insert into credit_card values (11,"idbi",65465464564656455,"2020-12-25",245,5643),
(12,"canara",6535635356356353,"2020-02-21",323,909),
(13,"central_bank_of_india",5555666765556323,"2010-06-12",133,2112),
(14,"fedaral_bank",5645462772827272,"2028-09-22",901,1108),
(15,"andra_bank",9123191287654356,"2019-08-25",003,1111),
(16,"ibbi",5646789853425367,"2018-10-23",109,900),
(17,"kotak-bank",8764876877677664,"2019-03-15",333,1240),
(18,"laxmi_vilas_bank",9126353676536353,"2020-11-19",534,6524),
(19,"sate_bank_of_india",6787536876726627,"2020-05-19",657,7003),
(20,"state_bank_of_hyd",1234565432761423,"2002-12-26",912,2342);
savepoint f2;
commit;

insert into credit_card values(21,"uco-bank",6545546565646558,"2012-05-20",776,7665),
(22,"union-bank-of-india",6566566254612462,"2011-09-27",111,2200),
(23,"sate-bank-of-patial",8767876767543456,"2021-03-23",876,999),
(24,"sind-bank",6576656676576565,"2030-12-27",004,1090),
(25,"vijaya-bank",9876458763345987,"2018-10-20",210,1980),
(26,"corparaation",976766765765655,"2015-09-28",090,9878),
(27,"devolopment_credit-bank",77666767656766666,"2012-07-24",115,1545),
(28,"bank_of_india",7676765765643443,"2010-10-26",600,1987),
(29,"andra_bank",7675765656656566,"2014-06-26",876,8745),
(30,"jammu_and-kashmir_bank",7636356565365665,"2017-11-24",104,1207),
(31,"icici",78637676764472526,"2017-10-20",910,1098),
(32,"sbi",6757656253627656,"2010-10-22",007,1900),
(33,"fedaral_bank",3443356452355454,"2015-08-25",445,2100),
(34,"union_bank",8678736767676272,"2019-12-24",134,1008),
(35,"swis_bank",8782768726367281,"2013-04-27",198,4001),
(36,"idbi",8763276836672767,"2020-05-23",100,1100),
(37,"canara-bank",5236652647167675,"2013-12-27",323,4440),
(38,"andra_bank",876382768872723,"2018-08-20",104,1024),
(39,"karanataka_bank",7673627762877387,"2018-12-22",650,2303),
(40,"state_bank_of_india",1234565437863763,"2008-01-23",786,9542),
(41,"cenral_bank",87673688278262877,"2018-07-25",666,7220),
(42,"union_bank_of_india",876438726637266,"2018-07-28",400,9900),
(43,"punjab_national_bank",6566545454545544,"2004-07-28",666,2121),
(44,"south_indain_bank",674236572566765,"2022-09-24",882,1010),
(45,"karur_vysya_bank",6723765765365517,"2019-08-21",876,2020),
(46,"bank_of_baroda",3768761787288531,"2011-12-25",234,1050),
(47,"orintal_bank_of_commarce",763776178723662,"2018-08-25",765,6089),
(48,"dhanlakshimi_bank",8763287684782673,"2008-01-26",005,8946),
(49,"yes_bank",6575654356776767,"2020-03-21",411,7867),
(50,"iNDAIN_overseas-bank",7652671621635359,"2004-07-28",072,4000);
savepoint f3;
desc credit_card;
select * from credit_card order by id;
-- adding constraints
alter  table credit_card modify  bill_amount int not null;
alter table credit_card modify id int unique;
desc credit_card;
alter table credit_card modify  credit_card_name varchar(50) default("Karnataka Bank");
alter table credit_card modify id int check(id<51);
-- joins 
select * from electricity left join credit_card on electricity.mode_of_payment=credit_card.id;
select * from electricity right join credit_card on electricity.mode_of_payment=credit_card.id;
select * from electricity left join credit_card on electricity.mode_of_payment=credit_card.id
union
select * from electricity right join credit_card on electricity.mode_of_payment=credit_card.id;
desc credit_card;
-- views
create view f1 as select id from credit_card;
create view f2 as select bill_amount,credit_card_name from credit_card;
create or replace view f2 as select credit_card_number  from credit_card;
select * from f2;
select * from f1;
select * from credit_card order by id;
-- indexes
create index qwe on credit_card (bill_amount);
show indexes in credit_card;
select * from credit_card use index(qwe);
create index rty on credit_card (id);
show indexes in credit_card;
drop index qwe on credit_card;
create unique index uio on credit_card(credit_card_number);
show indexes in credit_card;
create index opa on credit_card (expiry_date, credit_card_name);
show indexes in credit_card;
call CREDIT_CARD();
desc credit_card;
select count(*) as column_count from information_schema.columns 
where table_schema = "phonepe" 
and table_name = "credit_card";









create table loan_payment(id int, loan_finance_name varchar(50), loan_account_number bigint, due_date date, loan_amount int);
alter table loan_payment add primary key(due_date);
alter table loan_payment add foreign key(loan_account_number) references credit_card(credit_card_number);
desc loan_payment;
set autocommit=0;
insert into loan_payment values(1,"naveen",20837465671227,"2000-01-01",10000),(2,"sanjay",3864664734376,"2001-02-02",20000),
(3,"omkar",209387464677,"2002-03-03",30000),(4,"nagander",346764834796578,"2004-04-04",40000),
(5,"buden",35634648645565,"2005-05-05",50000),(6,"pavan",325642376445363,"2006-06-06",60000),
(7,"nani",547346732765356,"2007-07-07",70000),(8,"navi",325768635456478,"2008-08-08",80000),
(9,"reddy",2356435764765,"2009-09-09",90000),(10,"yadava",54653874345769,"2010-10-10",100000);
savepoint g1;
insert into loan_payment values(11,"kajal",23542365426542,"2011-11-11",99000),(12,"AA",234567635743,"2012-12-12",89000),
(13,"mama",53646457625978,"2013-02-28",79000),(14,"saller",364453547363546,"2013-03-26",69000),
(15,"macha",3537654625766,"2014-06-14",55000),(16,"fiter",434256437535,"2015-09-22",75000),
(17,"ravi",65234357635746,"2016-08-23",68000),(18,"subbu",2332455365453,"2017-03-17",66666),
(19,"seenu",3543675465465,"2018-05-22",8888),(20,"vijay",3254376457476,"2019-05-26",7777);
savepoint g2;
commit;
insert into loan_payment values(21,"ram",5326423567745,"2022-06-11",87365),(22,"ram",736472427536,"1987-06-04",8778),
(23,"ramu",62736527365,"1098-07-22",6432),(24,"harinath",362573636723,"2020-09-23",98789),
(25,"rani",7836427366,"1090-09-22",9887),(26,"ramesh",637456374275,"2034-03-22",4535),
(27,"rakhi",35436754985,"2019-09-28",8009),(28,"indu",32543764099,"2000-11-16",7707),
(29,"ram-kumar",5326423567,"2021-02-01",2135),(30,"pavitra",73647242656,"1980-12-14",8008),
(31,"ravi",6273652156,"1088-01-01",7656),(32,"prem",362579887,"1111-11-25",9870),
(33,"arthi",78364276,"1000-02-12",9887),(34,"rakesh",637456370987,"2009-03-21",9835),
(35,"ravikumar",2093874776,"1000-12-11",90000),(36,"jayaprakash",834796578,"2000-08-04",10000),
(37,"vali",35634647838,"5467-11-11",1982),(38,"navitha",325642376409,"1888-08-17",39000),
(39,"praksh",732765356,"1988-04-28",18000),(40,"chandan",98635456454,"1467-12-23",25000),
(41,"lavanya",435762352,"1111-09-04",96300),(42,"ganga",465387432653,"1212-01-10",43000),
(43,"alludu",235423356,"1008-07-21",2800),(44,"suseela",23456760948,"1536-02-02",11100),
(45,"mama",53646457625978,"2013-01-28",2424),(46,"kanna",453547763,"2019-06-24",22200),
(47,"seema",20938740898,"1657-12-11",85000),(48,"mamatha",364834796509,"1765-08-01",87500),
(49,"sai",8787368378,"2111-10-11",20000),(50,"harshitha",87878686,"1000-11-10",6537);
select * from loan_payment order by id asc;
desc loan_payment;
-- adding constraints
alter  table loan_payment modify  loan_amount int not null;
alter table loan_payment modify id int unique;
desc loan_payment;
alter table loan_payment modify loan_finance_name  varchar(50) default("TVS FINANCE");
alter table loan_payment modify id int check(id<51);
-- joins 
select * from loan_payment inner join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
select * from loan_payment left join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
select * from loan_payment right join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
select * from loan_payment left join subscriptions on loan_payment.due_date=subscriptions.recharge_date
union
select * from loan_payment right join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
desc loan_payment;
-- views
create view g1 as select id from loan_payment;
create view g2 as select loan_amount,loan_finance_name from loan_payment;
create or replace view g2 as select loan_account_number  from loan_payment;
select * from g2;
select * from g1;
select * from loan_payment order by id;
-- indexes
create index sdf on loan_payment (loan_amount);
show indexes in loan_payment;
select * from loan_payment use index(sdf);
create index ghj on loan_payment (id);
show indexes in loan_payment;
drop index sdf on loan_payment;
create unique index klz on loan_payment(bill_amount);
show indexes in loan_payment;
create index xcv on loan_payment (loan_finance_name,due_date);
show indexes in loan_payment;
call LOAN();
desc loan_payment;
select count(*) as column_count from information_schema.columns 
where table_schema = "phonepe" 
and table_name = "loan_payment";







create table subscriptions(id int, service_name varchar(50), cashback int, recharge_date date, mode_of_payment char, recharge_price int);
alter table subscriptions modify mode_of_payment varchar(50);
alter table subscriptions add primary key(cashback);
alter table subscriptions add foreign key(id) references dth_bill (id);
alter table subscriptions add foreign key(mode_of_payment) references electricity(mode_of_payment);
alter table subscriptions add foreign key(recharge_date) references loan_payment (due_date);
desc subscriptions;
set autocommit=0;
insert into subscriptions values (1,"snackible",100,"2012-06-23","phone pay",499),
(2,"AHA",150,"2003-05-13","g pay",255),
(3,"cultpass live",50,"2000-12-23","e card",399),
(4,"Disney hotstar",10,"2022-03-14","amazon",445),
(5,"mx player",45,"2002-03-25","phonee",499),
(6,"sonyliv",30,"2005-04-26","pay",199),
(7,"tinder",70,"2013-04-18","google",1999),
(8,"zee5",60,"2001-04-19","patemm",8844),
(9,"apollo 24|7",80,"2000-10-29","advance pay",599),
(10,"auric",90,"1999-11-11","amazon pay",1000);
savepoint h1;
insert into subscriptions values (11,"awsum",200,"2006-07-20","xpay",499),
(12,"airtel xstream play",101,"2010-09-10","paytem caro",9055),
(13,"azman edu",81,"1000-10-01","phonepay",99),
(14,"byjus",91,"2020-07-09","google pay",6445),
(15,"bajaj finserv",25,"2008-06-15","epay",799),
(16,"DDD advance",92,"2012-05-23","phone pay",4399),
(17,"epic on",40,"2015-07-01","paytem",4999),
(18,"erosnow",95,"2009-09-09","amazonpay",8800),
(19,"fitpass",51,"2001-06-20","googlepay",899),
(20,"fuienco",125,"2999-11-10","phonepay",8000);
savepoint h2;
commit;
insert into subscriptions values (21,"gaana plus",500,"2010-09-20","amzonp",899),
(22,"ht digital",650,"2009-02-23","paytem",20000),
(23,"hungama music",110,"2022-02-16","amazonp",799),
(24,"hungama play",55,"2023-11-17","e pay",445),
(25,"jiosaavn",48,"2012-09-20","paytem",499),
(26,"lujobox",79,"2020-12-29","googlepay",199),
(27,"medibuddy",109,"2023-05-19","paytem",1999),
(28,"microsoft 365",99,"2024-07-13","phonepa",844),
(29,"myupchar",33,"2000-11-30","amazonpay",599),
(30,"norton",20,"1989-12-31","phone pay",10000);
savepoint h3;
select * from subscriptions order by id asc;
desc subscriptions;
-- adding constraints
alter  table subscriptions modify  cashback int not null;
alter table subscriptions modify id int unique;
desc subscriptions;
alter table subscriptions modify service_name  varchar(50) default("AHA");
alter table subscriptions modify id int check(id<31);
-- joins 
select * from loan_payment left join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
select * from loan_payment right join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
select * from loan_payment left join subscriptions on loan_payment.due_date=subscriptions.recharge_date
union
select * from loan_payment right join subscriptions on loan_payment.due_date=subscriptions.recharge_date;
desc subscriptions;
-- views
create view h1 as select id from subscriptions;
create view h2 as select recharge_price,mode_of_payment from subscriptions;
create or replace view g2 as select cashback  from subscriptions;
select * from h2;
select * from h1;
select * from subscriptions order by id;
-- indexes
create index person1 on subscriptions (recharge_price);
show indexes in subscriptions;
select * from subscriptions use index(person1);
create index person2 on subscriptions(cashback);
show indexes in subscriptions;
drop index person1 on subscriptions;
create unique index person3 on subscriptions(id);
show indexes in subscriptions;
create index person4 on subscriptions (service_name,recharge_date);
show indexes in subscriptions;
call subscribe();
desc subscriptions;
select count(*) as column_count from information_schema.columns 
where table_schema = "phonepe" 
and table_name = "subscriptions";








create table fastag(id int, fastag_bank_name varchar(50), vehical_number varchar(8), cashback int, fastag_recharge int);
alter table fastag modify vehical_number varchar(12);
alter table fastag add primary key (fastag_bank_name);
alter table fastag add foreign key(cashback) references subscriptions(cashback);
desc fastag;
set autocommit=0;
set foreign_key_checks=0;
insert into fastag values (1,"SBO","AP02J2003",100,2000),
(2,"UNION_banks","KA07H3254",70,8100),
(3,"IDFC_FIRST","AP03K7623",90,1000),
(4,"Airtel_payments","AP30T3544",40,300),
(5,"Axis","AP09U2346",60,9000),
(6,"Karnataka","KA08L7364",20,200),
(7,"HDFC","UP12A2744",40,900),
(8,"ICICI","MP27S7463",700,9800),
(9,"IDBI","KL09H4343",190,9880),
(10,"Paytm_payment","AP30KJ2478",90,700);
savepoint i1;
insert into fastag values (11,"AU","AP03HG87453",80,9900),
(12,"Bandhan","AP23KL7475",70,8500),
(13,"maharashtra","MP34AD8634",80,9900),
(14,"Cenara","KL07T2634",90,8900),
(15,"City_Union","AP02KL7326",20,800),
(16,"IBO_Fastag","AP03K8764",90,9000),
(17,"Indian_Fastag","KA04K7842",700,8000),
(18,"karnataka_Banks","KA30S5657",80,9880),
(19,"Karur_Vysya","AP02KL9823",10,200),
(20,"Kotak_Mahindra","AP02L8237",20,2000),
(21,"Punjab_National","KL43U8276",30,100);
savepoint i2;
commit;
select*from fastag order by id asc;
-- self join
select b.id as person1, a.id as person2 from fastag as a, fastag as b where a.id=b.id; 




create table municipal_tax(id int, biller_name varchar(50), customer_id varchar(50), customer_phone_number bigint, tax_amount int, tax_date date);
desc municipal_tax;
set autocommit=0;
select * from municipal_tax;
insert into Municipal_Tax values(1,"GRAMPANCHAYAT_NEVARI","1AP232H",8237487333,100,"2000-08-25"),
(2,"GRAMPANCHAYAT_Ambegaon","AP5323423HJH",6526453653,700,"2002-09-29"),
(3,"GRAMPANCHAYAT_Hingangaon_Budruk","KA3664HGSHS",7236474643,100,"1899-09-23"),
(4,"GRAMPANCHAYAT_kheradewangi","KA22KJHKJFH",7274826499,899,"2004-10-19"),
(5,"Gulbarga_City_Corporation","APGW2364HDF",9872346372,7000,"2000-05-21"),
(6,"Shivamogga_City_Corporation","KH4385SFF",8287643465,600,"2005-07-09"),
(7,"Ajimer_Nagar_Nigam","AP67RHJF34",6572542734,800,"2003-03-20"),
(8,"Jejuri_Nagarparishad","HF65454KJGH",9878743245,899,"2000-04-12"),
(9,"MCGM_Property_Tax","HGD87664GR",8726463747,1000,"2012-05-17"),
(10,"Municipal_corporation_meerut","JGQ5E6534G",8768624623,9000,"2010-12-15");
savepoint j1;
insert into municipal_tax values(11,"GRAMPANCHAYAT_kheradewangi","AHGD823GD",9873747347,200,"2013-11-15"),
(12,"Ajimer_Nagar_Nigam","KHAR7EWFD4",6675344543,700,"2023-10-18"),
(13,"Shivamogga_City_Corporation","JHAGS76254F",9872832733,1000,"2020-09-18"),
(14,"Gulbarga_City_Corporation","JHGJSW6565FF",7623763523,1800,"2018-02-18"),
(15,"MCGM_Property_Tax","KAGDJH723GDD",8762876482,1000,"2013-02-12"),
(16,"Gulbarga_City_Corporation","HAGJGD624365",9879721372,100,"2012-03-16"),
(17,"Shivamogga_City_Corporation","JGAJD6524VG",8827648364,700,"2001-12-17"),
(18,"Ajimer_Nagar_Nigam","HJAGS876EEW",8276472364,1900,"2005-10-19"),
(19,"Jejuri_Nagarparishad","JAGSE87WGE",9817717273,200,"2003-02-03"),
(20,"Municipal_corporation_meerut","KJHA783724D",7653456243,390,"2000-01-13");
savepoint r2;
commit;
insert into municipal_tax values(21,"Nagar_nigam_agra","KSH8743HDS",8736874634,200,"2000-05-12"),
(22,"Telengana_Municipalities","JAGHEW67DD",9877443733,200,"2017-09-23"),
(23,"Shivamogga_City_Corporation","WHD87RWER",8734737783,300,"2021-10-18"),
(24,"Nagar_nigam_agra","SJGDF7W6RE",7665543545,500,"2017-12-06"),
(25,"Ajimer_Nagar_Nigam","JSG6R87E6TF",9874374734,890,"2012-05-09"),
(26,"GRAMPANCHAYAT_NEVARI","1AP232HHGS",8237487456,100,"2002-08-19"),
(27,"GRAMPANCHAYAT_Ambegaon","KA5323423HJH",9826433653,100,"2019-11-29"),
(28,"Jejuri_Nagarparishad","AP3664HGSHG",7236474893,200,"1999-10-12"),
(29,"Ajimer_Nagar_Nigam","AP22JSGHKJFH",9674826499,100,"2012-09-19"),
(30,"Shivamogga_City_Corporation","UPGW23AJGDF",7972367372,3000,"2001-10-19"),
(31,"GRAMPANCHAYAT_Hingangaon_Budruk","KL49844SFF",9807643432,1100,"2012-12-10"),
(32,"MCGM_Property_Tax","TS67JAGD34",6572542344,100,"2022-12-11"),
(33,"Municipal_corporation_meerut","HA6545KHDJGH",8778743435,110,"2010-04-10"),
(34,"Shivamogga_City_Corporation","HGD8IJD884GR",87263443544,4000,"2002-10-10"),
(35,"Ajimer_Nagar_Nigam","JG8764R6534G",9868624623,1000,"2015-06-18"),
(36,"Municipal_corporation_meerut","AHHDF823GD",9873749873,1000,"2020-09-10"),
(37,"GRAMPANCHAYAT_NEVARI","KHAR7EWFD4",6675344543,700,"2013-10-29"),
(38,"Jejuri_Nagarparishad","JHAGS76254F",9872832733,1000,"2020-09-18"),
(39,"GRAMPANCHAYAT_kheradewangi","JHGJSW6565FF",7623763523,1800,"2018-02-18"),
(40,"Gulbarga_City_Corporation","KAGDJH723GDD",8762876482,1000,"2014-12-12"),
(41,"GRAMPANCHAYAT_Hingangaon_Budruk","HAGJGDJGA4365",9879721873,100,"2018-12-13"),
(42,"Ajimer_Nagar_Nigam","JGAJDJHGD24VG",9877648364,100,"2021-12-17"),
(43,"MCGM_Property_Tax","HJAGS845EEW",8276473454,190,"2015-10-29"),
(44,"GRAMPANCHAYAT_Ambegaon","JAGSE843WGE",9817717273,200,"2003-02-03"),
(45,"Jejuri_Nagarparishad","KJHA7343724D",8753456243,490,"2012-01-13"),
(46,"Shivamogga_City_Corporation","KSH8743JHGDS",8936877634,900,"2013-05-12"),
(47,"Ajimer_Nagar_Nigam","JAGMHSDDW67DD",9875673733,200,"2013-12-23"),
(48,"Shivamogga_City_Corporation","WHD87RMNGDR",8734884783,200,"2012-10-08"),
(49,"GRAMPANCHAYAT_kheradewangi","SJGDFNBD6RE",9865598745,500,"2010-02-16"),
(50,"Gulbarga_City_Corporation","JSMHDGR87E6TF",7894374798,1000,"2013-05-09");
select * from municipal_tax;
truncate table municipal_tax;
-- self join
select e1.biller_name as Person1, e2.biller_name as person2 from municipal_tax as e1, municipal_tax e2  where e1.biller_name=e2.id; 







