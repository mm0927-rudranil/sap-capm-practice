// Customer
//    │
//    │ 1 : 1
//    ↓
// CustomerProfile

namespace my.shop;

entity Customers {

    key ID : Integer;

    name : String(100);

    profile : Association to CustomerProfiles;

    orders : Association to many Orders
                on orders.customer = $self;
}

entity CustomerProfiles {

    key ID : Integer;

    phone : String(20);

    city : String(100);

    customer : Association to Customers;
}

// One-to-Many Association
entity Orders {

    key ID : Integer;

    orderDate : Date;

    totalAmount : Decimal(10,2);

    customer : Association to Customers;

    items : Composition of many OrderItems
                on items.order = $self;
}

// Order → OrderItems a Composition
entity OrderItems {

    key ID : Integer;

    product : Association to Products;

    quantity : Integer;

    price : Decimal(10,2);

    order : Association to Orders;
}

// Order- OrderItem- Association ─Product
entity Products {

    key ID : Integer;

    name : String(100);

    price : Decimal(10,2);

    stock : Integer;
}

// many to many
entity Students {

    key ID : Integer;

    name : String(100);

    enrollments : Association to many Enrollments
                      on enrollments.student = $self;
}

entity Courses {

    key ID : Integer;

    name : String(100);

    enrollments : Association to many Enrollments
                      on enrollments.course = $self;
}

entity Enrollments {

    key ID : Integer;

    student : Association to Students;

    course : Association to Courses;

    enrollmentDate : Date;
}

