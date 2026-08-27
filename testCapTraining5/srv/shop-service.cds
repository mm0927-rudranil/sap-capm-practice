using my.shop as my from '../db/schema';

service ShopService {

    entity Customers as projection on my.Customers;

    entity CustomerProfiles as projection on my.CustomerProfiles;

    entity Orders as projection on my.Orders;

    entity OrderItems as projection on my.OrderItems;

    entity Products as projection on my.Products;

    entity Students as projection on my.Students;

    entity Courses as projection on my.Courses;

    entity Enrollments as projection on my.Enrollments;
}