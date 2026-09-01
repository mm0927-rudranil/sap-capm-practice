using my.views as my from './schema';

namespace my.views;


// =====================================================
// VIEW 1 - BASIC VIEW
// =====================================================

entity CustomerBasicView as
    select from my.Customers {
        ID,
        name,
        country
    };


// =====================================================
// VIEW 2 - CALCULATED FIELD
// =====================================================

entity CustomerDisplay as
    select from my.Customers {
        ID,
        name || ' - ' || city || ', ' || country
            as fullLocation : String(200)
    };


// =====================================================
// VIEW 3 - ORDER + CUSTOMER
// =====================================================

entity OrderList as
    select from my.Orders {
        ID,
        orderDate,
        totalAmount,
        status,

        customer.name    as customerName,
        customer.country as customerCountry
    };


// =====================================================
// VIEW 4 - AGGREGATION
// =====================================================

entity CustomerOrderStats as
    select from my.Orders {
        customer.ID   as customerID,
        customer.name as customerName,

        count(*) as totalOrders : Integer,

        sum(totalAmount) as totalSpent : Decimal(10,2)
    }
    group by
        customer.ID,
        customer.name;


// =====================================================
// VIEW 5 - FILTERED ORDERS
// =====================================================

entity PendingOrders as
    select from my.Orders {
        ID,
        customer.name as customerName,
        orderDate,
        totalAmount
    }
    where status = 'Pending';