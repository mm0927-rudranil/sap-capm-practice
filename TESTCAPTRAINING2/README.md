# TESTCAPTRAINING2

# SAP CAPM Practice Project 2

This is my second hands-on practice project for learning
**SAP Cloud Application Programming Model (CAPM)**.

The main focus of this project is:

- OData CRUD operations
- OData query options
- Filtering data
- Selecting specific fields
- Sorting data
- Pagination
- Understanding `$expand`
- Testing APIs using `test.http`

This project is created for learning and practice purposes.

---

# 📚 Topics Learned

## 1. CDS Entity

Created an `Employees` entity.

```cds
namespace my.company;

entity Employees {

    key ID : Integer;

    name       : String(100);
    email      : String(100);
    age        : Integer;
    department : String(100);
    salary     : Decimal(10,2);

}


$top Example
GET http://localhost:4004/odata/v4/employee/Employees?$orderby=salary desc&$top=3

Meaning:

1. Sort employees by salary descending
2. Return only top 3 employees

This can be used to find the:

Top 3 highest-paid employees
13. $skip

$skip skips a number of records.

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$skip=2

The first two records are skipped.

14. $skip + $top

These are commonly used together for pagination.

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$skip=2&$top=2

Meaning:

Skip first 2 employees
        ↓
Return next 2 employees
15. $filter + $orderby

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$filter=department eq 'IT'&$orderby=salary desc

Meaning:

1. Find IT employees
2. Sort them by salary descending
16. $filter + $select

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$filter=salary gt 40000&$select=name,salary

Meaning:

Find employees with salary > 40000

Then return only:

name
salary
17. $filter + $orderby + $top

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$filter=age gt 22&$orderby=salary desc&$top=2

Meaning:

1. Find employees older than 22
2. Sort by salary descending
3. Return top 2
18. $select + $orderby + $top

Example:

GET http://localhost:4004/odata/v4/employee/Employees?$select=name,department,salary&$orderby=salary desc&$top=3

Meaning:

Return:

name
department
salary

Sort by salary descending

Return only 3 employees
🔗 19. $expand

$expand is used to retrieve related entities through
associations or compositions.

Example concept:

Employee
   |
   └── Department

For $expand to work, the CDS model needs an association or composition.

Current Employee model does not yet contain an association.

Therefore, $expand will be practiced after adding relationships.