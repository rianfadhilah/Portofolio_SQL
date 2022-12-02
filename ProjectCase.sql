Create Table Books(
BookId char(5) not null,
BookTitle varchar(50) not null,
BookAuthor varchar(50) not null,
PublicationYear varchar(5),
primary key(BookId))

Create  Table Borrows(
BorrowId char(5) not null,
Bookid char(5) not null,
MemberId char(5) not null,
BorrowDate date not null,
DueDate date not null,
ReturnDate date )

create table members(
MemberId char(5) not null,
MemberName varchar(50) not null,
MemberPhone varchar (15) not null,
MemberAddress varchar(100) not null,
MemberEmail varchar(25) not null,
primary key (MemberId))

--alter table books
--alter column BookAuthor varchar (50)

alter table  borrows
add primary key (BorrowId),
CONSTRAINT FK_BookId
FOREIGN key (BookId) references books(BookId),
--alter table borrows
CONSTRAINT FK_MemberId
FOREIGN key (MemberId) references Members(MemberId)

--alter table borrows
--drop column MemberId


alter table Books
add BookEdition varchar(20)

Insert into Books(BookId,BookTitle,BookAuthor,PublicationYear,BookEdition)
values('BK000','Algoritma dan pemograman', 'Alisa Carmella',2020,'Edisi Keempat'),
('BK001','Object-Oriented Programing', 'Budi Haryanto', 2019,'Edisi Keempat'),
('BK002', 'Database Systems', 'Clarissa Gabriella Susanto', 2021, 'Edisi Kedua'),
('BK003','Sistem Jaringan', 'Gian Regiansyah Ibrahim', 2021, 'Edisi Kelima')


--truncate table members
--alter table borrows
--DROP CONSTRAINT FK_MemberId

insert into members(MemberId, MemberName, MemberPhone, MemberAddress, MemberEmail)
values('MB000','Sunny Larosa', '081298764321','Sudirman Street No. 26', 'Sunnyrosa@email.com'),
('MB001','Michele Belinda', '088153467908','Beringin Street No. 81', 'mbelinda@email.com'),
('MB002','Gilbert Christopher', '085691283746','Palmera Street No.57', 'gilbert.c@email.com'),
('MB003','Diarick Novando', '081919452812','Grand Palem Street no 99', 'novaldo.diarick@email.com'),
('MB004','Timonthy julian', '081261279485','Gading Street No. 2', 'timonthyjulian@email.com')


insert into Borrows(BorrowId, Bookid, MemberId, BorrowDate, DueDate, ReturnDate)
values
('BW000','BK001', 'MB002', '2021/07/11','2021/07/18', '2021/07/17'),
('BW001', 'BK002', 'MB000', '2021/07/11', '2021/07/18', '2021/07/21'),
('BW002', 'BK003', 'MB004', '2021/07/12', '2021/07/19', '2021/07/16'),
('BW003', 'BK002', 'MB003', '2021/07/12', '2021/07/19', '2021/07/25'),
('BW004', 'BK000', 'MB001', '2021/07/14', '2021/07/21', '2021/07/19')


Update Members
	Set MemberPhone = Stuff(MemberPhone, 1, 3, '+628')

select * from members

Select BorrowId, MemberName, BookTitle, DueDate, ReturnDate, 
Concat('Rp. ', cast(datediff(day,DueDate,returnDate)as int)*5000) as Fine
from Borrows a
join members b on a.MemberId = b.MemberId
join books c on a.Bookid = c.BookId
where cast(datediff(day,DueDate,returnDate)as int) >1