CREATEDB todolist

CREATE TABLE todos 
    (id serial primary key, 
    title varchar(255) not NULL, 
    details text, 
    priority int not NULL DEFAULT 1, 
    created_at timestamp not NULL, 
    completed_at timestamp);

INSERT INTO todos (title, details, priority, created_at, completed_at) 
    VALUES 
        ('Walk The Dog', 'Go Walk The Dog', 1, '06/27/2017 14:49:00', null),
        ('Feed The Cow', 'I Need To Get The Cow Fat', 2, '06/27/2017 14:49:00', null),
        ('Eat Some Toast', 'I Need To Eat Some Carbs', 3, '06/27/2017 14:49:00', null),
        ('Go To The Gym', 'I Have To Get Swole', 4, '06/27/2017 14:49:00', null),
        ('Code My Face Off', 'I Need TO Get Better At Programming', 5, '06/27/2017 14:49:00', null);

UPDATE todos SET completed_at='06/27/2017 15:25:00' WHERE title='Code My Face Off';

SELECT * FROM todos WHERE completed_at is null;

SELECT * FROM todos WHERE priority IS > 1;

UPDATE todos SET completed_at='06/27/2017 15:45:00' WHERE id=4;

DELETE FROM todos WHERE completed_at IS NOT null;