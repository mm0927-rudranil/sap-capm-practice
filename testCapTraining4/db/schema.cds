namespace my.bookshop;

entity Books{
    key ID: Integer;
        title : String;
        price : Integer;
        order: Order @assert.range;
        paymentStatus: PaymentStatus;
}

type Order : String enum{
    PLACED = 'P';
    CANCLEED = 'C';
    SHIPPED = 'S'
}

type PaymentStatus : String enum{
    PENDING= 'P';
    PAID = 'S';
    FAIL = 'F'
}