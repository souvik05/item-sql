insert into menuitems value('1A','Sandwitch', 99.00,'yes','2017-03-15');
insert into menuitems value('2B','Burgur', 129.00, 'yes','2017-12-23');
insert into menuitems value('3C','Pizza', 149.00,'yes','2017-08-21');
insert into menuitems value('4D','French Fries', 57.00,'yes','2017-07-02');


insert into users value('123A','Souvik','customer');
insert into users value('123B','saikat','Admin');

insert into cart value('11A','123B',null);
insert into cart value('11B','123A','1A');
insert into cart value('21B','123A','3C');
insert into cart value('31B','123A','4D');

select * from menuitems;

select item_id,item_name,price from menuitems where  active_details='yes' And
 year( launch_date)='2017';
 
 select * from menuitems where item_id='1a';
 
update menuitems set item_id='7a', item_name='momo', price=139.00
where item_id='2B';

select m.item_id,m.item_name,m.price,c.cart_id from cart as c 
CROSS JOIN menuitems as m where user_id='123A';

select sum(m.price) from menuitems as m inner join cart as c on m.item_id=c.item_id
inner join users as u on c.user_id=u.user_id;


delete from cart where item_id='1A' and user_id='123A';
select *  from cart;