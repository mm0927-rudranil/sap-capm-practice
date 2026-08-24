namespace my.validation;

// entity Employees {
//     key ID : Integer;

//     name : String;

//     age : Integer @assert: (case
//         when age < 18
//             then 'Employee must be at least 18'
//         when age > 60
//             then 'Employee age cannot exceed 60'
//     end);

//     address : String @assert: (case
//         when address is null
//             then 'Address must be specified'
//         when length(address) < 3
//             then 'Address is too short'
//     end);
// }




entity Employees {

    key ID : Integer;

    @mandatory
    name : String(100);

    @assert.range: [18, 60]
    age : Integer;

    @mandatory
    email : String(100)
        @assert.format: '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';

    @mandatory
    phone : String(10)
        @assert.format: '^[0-9]{10}$';

    department : String default 'Development';

    salary : Decimal(10,2)
        @assert.range: [15000, 200000];

    address : String @assert: (case
        when address is null
            then 'Address must be specified'
        when length(address) < 3
            then 'Address is too short'
        when length(address) > 100
            then 'Address is too long'
    end);

    status : String default 'ACTIVE';

    @readonly
    createdAt : Timestamp;

    @readonly
    createdBy : String;
}