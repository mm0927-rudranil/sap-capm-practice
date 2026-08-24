using my.validation as my from '../db/schema';

service CatalogService {

    entity Employees as projection on my.Employees;

}