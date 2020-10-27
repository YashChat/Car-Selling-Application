CREATE TABLE Buyer
    (
        Customer_id VARCHAR(6) NOT NULL,
        Name VARCHAR(20) NOT NULL,
        Address VARCHAR(20) NOT NULL,
        Pincode NUMBER(6) NOT NULL,
        Phone_number number(10) NOT NULL,
        PRIMARY KEY (Customer_id),
        Cart_id VARCHAR(7) NOT NULL,
        FOREIGN KEY(Cart_id) REFERENCES Cart(Cart_id)
    ); 
    
CREATE TABLE Cart
    (
        Cart_id VARCHAR(7) NOT NULL,
        PRIMARY KEY(Cart_id)
        Brand_id VARCHAR(5) NOT NULL,
        FOREIGN KEY(Brand_id) REFERENCES Vehicle_brand(Brand_id)
       
    );
    
CREATE TABLE Vehicle_Brand
 (
        Brand_id VARCHAR(5) NOT NULL,
        PRIMARY KEY(Brand_id)
        Make_id VARCHAR(5) NOT NULL,
        FOREIGN KEY(Make_id) REFERENCES Make(Make_id)
 );
