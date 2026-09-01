namespace my.views;

entity Customers {
    key ID : Integer;
    name : String(100);
    city : String(100);
    country : String(100);
}

entity Orders {
    key ID : Integer;

    orderDate : Date;

    totalAmount : Decimal(10,2);

    status : String(30);

    customer : Association to Customers;
}