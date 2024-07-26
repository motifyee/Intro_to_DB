CREATE TABLE Books(
  book_id INT Primary Key,
  title VARCHAR(130),
  author_id INT, 
  price FLOAT,
  publication_date DATE,
  FOREIGN KEY (author_id) REFERENCES (Authors)
)


CREATE TABLE Authors(
  author_id Primary Key,
  author_name VARCHAR(215)
)

CREATE TABLE Customers(
  customer_id Primary Key,
  customer_name VARCHAR(215),
  email VARCHAR(215),
  address TEXT,
)

CREATE TABLE Orders(
  order_id Primary Key,
  customer_id INT,
  order_date DATE,
  FOREIGN KEY (customer_id) REFERENCES (Customers)
)

CREATE TABLE Order_Details(
  orderdetailid Primary Key,
  order_id INT,
  book_id INT, 
  quantity FLOAT,
  FOREIGN KEY (book_id) REFERENCES (Books),
  FOREIGN KEY (order_id) REFERENCES (Orders)
)