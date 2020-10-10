use truyum;

create table menuitems(
     item_id  varchar(50),
     item_name varchar(55),
    price int,
    active_details varchar(55),
    launch_date DATE,
     category varchar(55),
    free_delevery varchar(55),
    primary key(item_id)
       
);
create table cart(
     cart_id varchar(55),
     user_id  varchar(50),
     item_id  varchar(50),
     launch_date DATE,
      primary key(cart_id),
      foreign key (item_id) references menuitems(item_id),
      foreign key (user_id) references users(user_id)
);

create table users(
     user_id varchar(55),
     user_name varchar(50),
     
    primary key(user_id)
);


