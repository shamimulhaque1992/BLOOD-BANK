create table Admin
(AId number(5) not null primary key,
AName  varchar(50) not null,
Sex varchar(10),
PNo varchar(20),
Email varchar(50),
Address varchar(50)
);


insert into admin values
(1, 'Khandoker Shamimul Haque', 'Male', '01779312970', 'khandoker15-1992@diu.edu.bd', 'YunusKhan Scholers garden' );
insert into admin values
(2, 'Shahariar Hasan Shadhin', 'Male', '01779312567', 'shahariar15-1960@diu.edu.bd', 'YunusKhan Scholers garden' );
insert into admin values
(3, 'Imtiaj Sultan Tanvir', 'Male', '01779312465', 'imtiaj15-1954@diu.edu.bd', 'YunusKhan Scholers garden' );




create table Employee
(EId number(5) not null primary key,
Region_cod varchar(25),
EName  varchar(50) not null,
Sex varchar(10),
PNo varchar(20),
Email varchar(50),
Address varchar(50),
AId number(5),
FOREIGN KEY (AId) REFERENCES Admin (AId) 
);



insert into Employee values
(1,'DH_Uttora123', 'Rejaul', 'Male', '01779345970', 'Rejaul15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 1 );
insert into Employee values
(2,'CTG_AGGRABAD123', 'Ariful', 'Male', '01775612970', 'Ariful15-1992@diu.edu.bd', 'YunusKhan Scholers garden',3 );
insert into Employee values
(3,'RJS_STATION123', 'Masidul', 'Male', '01846312970', 'Masidul15-1992@diu.edu.bd', 'YunusKhan Scholers garden' ,2);
insert into Employee values
(4,'BRI_VOLA123', 'Rakibul', 'Male', '01779562970', 'Rakibul15-1992@diu.edu.bd', 'YunusKhan Scholers garden',1 );
insert into Employee values
(5,'DH_MIRPUR123', 'Farukul', 'Male', '01770479970', 'Farukul15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 3);





create table Donor
(DId number(5) not null primary key,
DName  varchar(50) not null,
Sex varchar(10),
PNo varchar(20),
Email varchar(50),
Address varchar(50),
Blood_group varchar(5),
Age number(5),
AId number(5),
BL_ID number(10),
FOREIGN KEY (AId) REFERENCES Admin (AId),
FOREIGN KEY (BL_ID) REFERENCES Blood (BL_ID)
);





insert into Donor values
(1, 'arifur', 'Male', '01779862970', 'arifur15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 'A+', 46, 2, 3 );
insert into Donor values
(2, 'Sharikhur', 'Male', '01779362567', 'Sharikhur15-1960@diu.edu.bd', 'YunusKhan Scholers garden' , 'A+', 49, 1, 2 );
insert into Donor values
(3, 'tarikhur', 'Male', '01779356465', 'tarikhur15-1954@diu.edu.bd', 'YunusKhan Scholers garden' , 'O+', 46 , 3, 3);
insert into Donor values
(4, 'saifru', 'Male', '01779812567', 'saifru15-1960@diu.edu.bd', 'YunusKhan Scholers garden' , 'AB+', 56, 1, 4 );
insert into Donor values
(5, 'taikur', 'Male', '01989312465', 'taikur15-1954@diu.edu.bd', 'YunusKhan Scholers garden' , 'A-', 26, 1, 3 );







create table Seeker
(SId number(5) not null primary key,
SName  varchar(50) not null,
Sex varchar(10),
PNo varchar(20),
Email varchar(50),
Address varchar(50),
Blood_group varchar(5),
Age number(5)
);





insert into Seeker values
(1, 'JAHID', 'Male', '01779232970', 'JAHID15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 'A+', 46 );
insert into Seeker values
(2, 'tony stark', 'Male', '01779542567', 'tonystark15-1960@diu.edu.bd', 'YunusKhan Scholers garden' , 'A+', 49 );
insert into Seeker values
(3, 'stifen rojers', 'Male', '01779356095', 'stifenrojers15-1954@diu.edu.bd', 'YunusKhan Scholers garden' , 'O+', 46 );
insert into Seeker values
(4, 'thor', 'Male', '01774812567', 'thor15-1960@diu.edu.bd', 'YunusKhan Scholers garden' , 'AB+', 56 );
insert into Seeker values
(5, 'logan', 'Male', '0198612465', 'logan15-1954@diu.edu.bd', 'YunusKhan Scholers garden' , 'A-', 26 );






create table Sponsor
(SpId number(5) not null primary key,
CompName  varchar(50) not null,
ContNo varchar(20),
Email varchar(50),
Address varchar(50),
AId number(5),
FOREIGN KEY (AId) REFERENCES Admin (AId)
);





insert into Sponsor values
(1, 'jason', '01779862970', 'jason15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 2);
insert into Sponsor values
(2, 'aurther', '01779862970', 'aurther15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 3);
insert into Sponsor values
(3, 'junayed', '01779862970', 'junayed15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 1);
insert into Sponsor values
(4, 'jamshed', '01779862970', 'junayed15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 1);
insert into Sponsor values
(5, 'misbah', '01779862970', 'misbah15-1992@diu.edu.bd', 'YunusKhan Scholers garden', 1);






create table Blood
(BL_ID number(10) not null primary key,
blood_group varchar(5) not null,
blood_report varchar(50) not null,
AId number(5),
FOREIGN KEY (AId) REFERENCES Admin (AId)
);





insert into Blood values
(1, 'A+', 'Normal',1 );
insert into Blood values
(2, 'A+', 'Normal', 2 );
insert into Blood values
(3, 'A+', 'Normal', 3 );
insert into Blood values
(4, 'A+', 'Normal', 2 );
insert into Blood values
(5, 'A+', 'Normal', 1 );






create table contact
(cont_ID number(3) not null primary key,
DId number(5),
EId number(5),
FOREIGN KEY (DId) REFERENCES Donor (DId),
FOREIGN KEY (EId) REFERENCES Employee (EId)
);


insert into contact values
(1,1,3 );
insert into contact values
(2,5,2 );
insert into contact values
(3,4,1 );
insert into contact values
(4,2,3 );
insert into contact values
(5,3,4 );






create table Search
(Search_ID number(3) not null primary key,
BL_ID number(10),
SId number(5),
FOREIGN KEY (BL_ID) REFERENCES Blood (BL_ID),
FOREIGN KEY (SId) REFERENCES Seeker (SId)
);





insert into Search values
(1,5,1 );
insert into Search values
(2,4,2 );
insert into Search values
(3,3,4 );
insert into Search values
(4,2,3 );
insert into Search values
(5,1,5 );







create table Fetch
(Fatchch_ID number(3) not null primary key,
SId number(5),
EId number(5),
FOREIGN KEY (SId) REFERENCES Seeker (SId),
FOREIGN KEY (EId) REFERENCES Employee (EId)
);




insert into Fetch values
(1,2,4 );
insert into Fetch values
(2,1,3 );
insert into Fetch values
(3,3,5 );
insert into Fetch values
(4,4,2 );
insert into Fetch values
(5,5,4 );



