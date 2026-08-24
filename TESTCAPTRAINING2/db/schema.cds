namespace my.company;

entity Employees {
    key ID          : Integer;
    name            : String(100);
    email           : String(100);
    age             : Integer;
    department      : String(100);
    salary          : Decimal(10,2);
}