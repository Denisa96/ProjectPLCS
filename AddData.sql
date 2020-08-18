USE PLCS

insert into Member (CardID,Name)
values (123456,'Member1')

insert into Member (CardID,Name)
values (123457,'Member2')

insert into Authors (AuthorID,Author_Name)
values (159,'Author1')

insert into Authors (AuthorID,Author_Name)
values (160,'Author2')


insert into Books (BookID,ISBN,Book_Name,NumberOfCopies)
values (123,147258,'Author1_Book1',5)

insert into Books (BookID,ISBN,Book_Name,NumberOfCopies)
values (124,147259,'Author1_Book2',3)

insert into Books (BookID,ISBN,Book_Name,NumberOfCopies)
values (125,147260,'Author2_Book1',6)


insert into Book_Author (BookID,AuthorID)
values (123,159)

insert into Book_Author (BookID,AuthorID)
values (124,159)

insert into Book_Author (BookID,AuthorID)
values (125,160)

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123456,123,'06/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123456,124,'07/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123456,124,'07/01/2019')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123457,124,'06/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123457,123,'07/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123457,125,'05/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123456,125,'05/01/2020')

insert into Member_Books (CardID,BookID,Date_Borrowed)
values (123457,125,'05/01/2019')

