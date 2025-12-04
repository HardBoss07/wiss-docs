drop database if exists game_reviews;

create database if not exists game_reviews;
use game_reviews;

drop table if exists reviews;
drop table if exists users;
drop table if exists games;

create table users(
    user_id int auto_increment primary key,
    username varchar(50) not null,
    email varchar(100),
    created_at datetime default current_timestamp
);

create table games(
    game_id int auto_increment primary key,
    spielname varchar(100) not null,
    release_date date
);

create table reviews(
    review_id int auto_increment primary key,
    user_id int not null,
    game_id int not null,
    bewertung int not null check (bewertung between 1 and 5),
    titel varchar(255) not null,
    kommentar text,
    review_date datetime default current_timestamp,
    constraint fk_user foreign key (user_id) references users(user_id)
        on delete cascade
        on update cascade,
    constraint fk_game foreign key (game_id) references games(game_id)
        on delete cascade
        on update cascade
);

insert into users (username, email) values
('alice', 'alice@example.com'),
('bob', 'bob@example.com'),
('charlie', 'charlie@example.com');

insert into games (spielname, release_date) values
('spiel a', '2025-01-10'),
('spiel b', '2024-05-20'),
('spiel c', '2023-11-15');

insert into reviews (user_id, game_id, bewertung, titel, kommentar) values
(1, 1, 5, 'tolles spiel', 'hat mir sehr gefallen'),
(2, 2, 4, 'gutes spiel', 'spassig, aber kleine bugs'),
(3, 3, 3, 'ok', 'nicht schlecht, aber auch nicht super');

insert into users (username, email) values
(null, 'no_name@example.com');

insert into games (spielname, release_date) values
(null, '2025-12-01');

insert into reviews (user_id, game_id, bewertung, titel, kommentar) values
(1, 1, 6, 'ungueltige bewertung', 'bewertung ausserhalb skalierung');

insert into reviews (user_id, game_id, bewertung, titel, kommentar) values
(1, 1, 4, null, 'kein titel');
