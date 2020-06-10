/* Start of the assignment */
create schema assignment;
use assignment;
select * from bajaj_temp;
desc bajaj_temp;

/*****************************************BAJAJ AUTO STOCK*********************************************/
/* Lets create a new date column  */
alter table bajaj_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update bajaj_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc bajaj_temp;
select * from bajaj_temp;

/* Remove old date column from table since new date column is accurate*/
alter table bajaj_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table bajaj1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from bajaj_temp as v;

/* Verifying whether data looks good */
select * from bajaj1;

/* Dropping old table bajaj_temp */
drop table `bajaj_temp`;

/*****************************************EICHER MOTORS STOCK*********************************************/
/* Lets create a new date column  */
alter table eicher_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update eicher_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc eicher_temp;
select * from eicher_temp;

/* Remove old date column from table since new date column is accurate*/
alter table eicher_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table eicher1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from eicher_temp as v;

/* Verifying whether data looks good */
select * from eicher1;

/* Dropping old table bajaj_temp */
drop table `eicher_temp`;

/*****************************************Hero STOCK*********************************************/
/* Lets create a new date column  */
alter table hero_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update hero_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc hero_temp;
select * from hero_temp;

/* Remove old date column from table since new date column is accurate*/
alter table hero_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table hero1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from hero_temp as v;

/* Verifying whether data looks good */
select * from hero1;

/* Dropping old table bajaj_temp */
drop table `hero_temp`;

/*****************************************TVS Motors STOCK*********************************************/
/* Lets create a new date column  */
alter table tvs_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update tvs_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc tvs_temp;
select * from tvs_temp;

/* Remove old date column from table since new date column is accurate*/
alter table tvs_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table tvs1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from tvs_temp as v;

/* Verifying whether data looks good */
select * from tvs1;

/* Dropping old table bajaj_temp */
drop table `tvs_temp`;

/*****************************************Infosys STOCK*********************************************/
/* Lets create a new date column  */
alter table infosys_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update infosys_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc infosys_temp;
select * from infosys_temp;

/* Remove old date column from table since new date column is accurate*/
alter table infosys_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table infosys1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from infosys_temp as v;

/* Verifying whether data looks good */
select * from infosys1;

/* Dropping old table bajaj_temp */
drop table `infosys_temp`;

/*****************************************TCS STOCK*********************************************/
/* Lets create a new date column  */
alter table tcs_temp
add column date_field datetime after Date;

/* Lets push the values into new date column from old varchar date column  */
update tcs_temp
set date_field = str_to_date(Date, '%e-%M-%Y') where 2=2;

/* Checking the description and content of the table to confirm that transformation happened successfully  */
desc tcs_temp;
select * from tcs_temp;

/* Remove old date column from table since new date column is accurate*/
alter table tcs_temp drop `Date`;

/* Lets calculate the moving average of the "Close Price" column */
create table tcs1
	select `date_field` as Date,
    `Close Price`,
	round(avg(`Close Price`) over (order by date_field desc rows 19 preceding ), 2) `20 Day MA`,
    round(avg(`Close Price`) over (order by date_field desc rows 49 preceding ), 2) `50 Day MA`
	from tcs_temp as v;

/* Verifying whether data looks good */
select * from tcs1;

/* Dropping old table bajaj_temp */
drop table `tcs_temp`;

/*****************************************MASTER TABLE*********************************************/
create table master_stock_table
	select b.Date, b.`Close Price` as Bajaj,
	tc.`Close Price` as TCS,
	tv.`Close Price` as TVS,
	i.`Close Price` as Infosys,
	e.`Close Price` as Eicher,
	h.`Close Price` as Hero
	from bajaj1 b
	inner join tcs1 tc
	using (Date)
	inner join tvs1 tv
	using (Date)
	inner join infosys1 i
	using (Date)
	inner join eicher1 e
	using (Date)
	inner join hero1 h
	using (Date)
    order by b.Date desc;

/* Lets check the master_stock_table just created */
select * from master_stock_table;

/*****************************************SIGNALS FOR BAJAJ STOCK*********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForBajajStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from bajaj1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from bajaj1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from bajaj1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from bajaj1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating bajaj2 table as per the assignment. Incorporating signal column in the table *******************/
create table bajaj2
	select `Date`, `Close Price`,
	signalForBajajStock(`Date`) as `Signal`
	from bajaj1;

select * from bajaj2;

/*****************************************SIGNALS FOR EICHER STOCK *********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForEicherStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from eicher1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from eicher1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from eicher1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from eicher1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating eicher2 table as per the assignment. Incorporating signal column in the table *******************/
create table eicher2
	select `Date`, `Close Price`,
	signalForEicherStock(`Date`) as `Signal`
	from eicher1;

select * from eicher2;

/*****************************************SIGNALS FOR HERO STOCK *********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForHeroStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from hero1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from hero1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from hero1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from hero1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating hero2 table as per the assignment. Incorporating signal column in the table *******************/
create table hero2
	select `Date`, `Close Price`,
	signalForHeroStock(`Date`) as `Signal`
	from hero1;

select * from hero2;

/*****************************************SIGNALS FOR TVS STOCK *********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForTVSStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from tvs1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from tvs1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from tvs1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from tvs1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating tvs2 table as per the assignment. Incorporating signal column in the table *******************/
create table tvs2
	select `Date`, `Close Price`,
	signalForTVSStock(`Date`) as `Signal`
	from tvs1;

select * from tvs2;

/*****************************************SIGNALS FOR TCS STOCK *********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForTCSStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from tcs1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from tcs1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from tcs1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from tcs1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating tcs2 table as per the assignment. Incorporating signal column in the table *******************/
create table tcs2
	select `Date`, `Close Price`,
	signalForTCSStock(`Date`) as `Signal`
	from tcs1;

select * from tcs2;

/*****************************************SIGNALS FOR INFOSYS STOCK *********************************************/
/*********Creating a stored function which is going to return signal based on current Close price, and previous day close price******/
/*******When the shorter-term moving average crosses above the longer-term moving average the NEXT DAY, it is a signal to BUY.******/
delimiter $$
create function signalForInfosysStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
	declare nextDate20DayMA varchar(20);
    declare nextDate50DayMA varchar(20);
    declare currentDate20DayMA varchar(20);
    declare currentDate50DayMA varchar(20);
    declare nextDaySignalValue varchar(20);

    set nextDate20DayMA = (select `20 Day MA` from infosys1 where Date < Date1 order by Date desc limit 1);
    set nextDate50DayMA = (select `50 Day MA` from infosys1 where Date < Date1 order by Date desc limit 1);
    set currentDate20DayMA = (select `20 Day MA` from infosys1 where Date = Date1 limit 1);
    set currentDate50DayMA = (select `50 Day MA` from infosys1 where Date = Date1 limit 1);

    if currentDate20DayMA <= currentDate50DayMA and nextDate20DayMA > nextDate50DayMA then
		set nextDaySignalValue = "Buy";
	elseif currentDate20DayMA >= currentDate50DayMA and nextDate20DayMA < nextDate50DayMA then
		set nextDaySignalValue = "Sell";
	else
		set nextDaySignalValue = "Hold";
	end if;
    return nextDaySignalValue;
end; $$
delimiter ;

/************* Creating infosys2 table as per the assignment. Incorporating signal column in the table *******************/
create table infosys2
	select `Date`, `Close Price`,
	signalForInfosysStock(`Date`) as `Signal`
	from infosys1;

select * from infosys2;

/********** Getting Date as Input and returning the signal for that day for Bajaj stock ************/
delimiter $$
create function findSignalForBajajStock(
	`Date1` Date
)
returns varchar(25) deterministic
begin
    declare currentDaySignalValue varchar(20);
    set currentDaySignalValue = (select `Signal` from bajaj2 where Date = Date1 order by Date desc limit 1);
    return currentDaySignalValue;
end; $$
delimiter ;

select findSignalForBajajStock( str_to_date("02-March-2015", '%e-%M-%Y') ) as `Signal`;

/************************ END OF ASSIGNMENT **************************************/
