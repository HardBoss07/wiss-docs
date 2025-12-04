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
    titel varchar(255),
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
(1, 2, 4, 'gutes spiel', 'spassig, aber kleine bugs'),
(2, 1, 3, 'ok', 'nicht schlecht, aber auch nicht super'),
(2, 3, 2, 'schwach', 'erwartungen nicht erfüllt'),
(3, 2, 5, 'top', 'sehr empfehlenswert'),
(3, 3, 4, 'gutes spiel', 'hat spass gemacht');

insert into reviews (user_id, game_id, bewertung, titel, kommentar) values
(999, 1, 5, 'nicht existierender user', 'dies sollte fehlschlagen'); 

