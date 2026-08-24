# CAP-VALIDATION-PRACTICE

# SAP CAPM Practice Project 3

This project is created for practicing **Declarative Constraints and
CDS Annotations** in SAP Cloud Application Programming Model (CAPM).

The main purpose of this project is to understand how validation can be
defined declaratively in CDS without writing JavaScript service-handler
logic.

---

# 📚 Topics Learned

## 1. CDS Entity

Created an `Employees` entity.

```cds
namespace my.validation;

entity Employees {

    key ID : Integer;

    name : String(100);
    age : Integer;
    email : String(100);
    phone : String(10);
    department : String;
    salary : Decimal(10,2);
    address : String;
    status : String;
    createdAt : Timestamp;
    createdBy : String;
}