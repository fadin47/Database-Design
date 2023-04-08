drop database if exists Database_Design;
create database if not exists Database_Design;

use Database_Design;

create table if not exists Artist(
artist_id int not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
dob datetime,
primary key(artist_id)
);

create table if not exists Song(
artist_id int not null,
song_id int not null,
genre varchar(100) not null,
duration int not null,
title varchar(100) not null,
link varchar(255) not null,
explicit varchar(50) not null,
primary key(song_id),
foreign key (artist_id) references artist(artist_id)
);

create table if not exists Genre(
genre_name varchar(100),
primary key(genre_name)
);

create table if not exists Play_list(
playlist_id int not null,
song_id int not null,
song_order varchar(100) not null,
primary key(song_id, song_order),
foreign key (song_id) references song(song_id)
);

create table if not exists User(
user_id int not null,
first_name varchar(100) not null,
last_name varchar(100) not null,
password varchar(100) not null,
email varchar(100) not null,
primary key(user_id),
foreign key (user_id) references song(song_id)
);



