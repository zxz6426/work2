create table snackmanage(
                           b_id int primary key auto_increment,
                           b_name varchar(30) not null ,
                           b_author varchar(30) not null ,
                           b_time datetime not null,
                           b_type varchar(4) not null
)charset=UTF8;

INSERT INTO snackmanage (b_name, b_author, b_time, b_type) VALUES
           ('巧克力', '德芙', '2024-06-29 10:00:00', '甜品'),
           ('薯片', '乐事', '2024-06-29 11:30:00', '咸食'),
           ('饼干', '洽洽', '2024-06-29 12:45:00', '甜品'),
           ('果冻', '喜之郎', '2024-06-29 09:15:00', '甜品'),
           ('牛肉干', '农香森', '2024-06-29 08:00:00', '肉类'),
           ('榴莲酥', '好丽友', '2024-06-29 14:00:00', '甜品'),
           ('虾条', '盼盼', '2024-06-29 13:20:00', '咸食'),
           ('瓜子', '老街口', '2024-06-29 10:45:00', '坚果'),
           ('软糖', '旺旺', '2024-06-29 11:00:00', '甜品'),
           ('花生米', '老街口', '2024-06-29 09:30:00', '坚果'),
           ('棒棒糖', '阿尔卑斯', '2024-06-29 15:00:00', '甜品'),
           ('海苔', '波力', '2024-06-29 16:30:00', '咸食');

select * from snackmanage;