# LibrarySystem

This is a library management system based on spring and MySQL. The main functions include: book query, book management, book editing, reader management, book borrowing and returning, and borrowing and returning log records.

### ER-diagram of the database for our library system
<img src = "./image/ER.png">

### Entities and their Attributes 
Book Entity : It has authno, isbn number, title, edition, category, price. ISBN is the Primary Key for Book Entity.
Reader Entity : It has UserId, Email, address, phone no, name. Name is composite attribute of firstname and lastname. Phone no is multi valued attribute. UserId is the Primary Key for Readers entity.
Publisher Entity : It has PublisherId, Year of publication, name. PublisherID is the Primary Key.
Authentication System Entity : It has LoginId and password with LoginID as Primary Key.
Reports Entity : It has UserId, Reg_no, Book_no, Issue/Return date. Reg_no is the Primary Key of reports entity.
Staff Entity : It has name and staff_id with staff_id as Primary Key.
Reserve/Return Relationship Set : It has three attributes: Reserve date, Due date, Return date.

### Relationships between Entities
A reader can reserve N books but one book can be reserved by only one reader. The relationship 1:N.
A publisher can publish many books but a book is published by only one publisher. The relationship 1:N.
Staff keeps track of readers. The relationship is M:N.
Staff maintains multiple reports. The relationship 1:N.
Staff maintains multiple Books. The relationship 1:N.
Authentication system provides login to multiple staffs. The relation is 1:N.