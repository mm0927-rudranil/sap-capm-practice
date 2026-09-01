using my.views as my from '../db/schema';
using my.views as views from '../db/views';

service ViewsService {

    @cds.redirection.target
    entity Customers as projection on my.Customers;

    entity Orders as projection on my.Orders;


    @readonly
    entity CustomerBasicView
        as projection on views.CustomerBasicView;

    @readonly
    entity CustomerDisplay
        as projection on views.CustomerDisplay;

    @readonly
    entity OrderList
        as projection on views.OrderList;

    @readonly
    entity CustomerOrderStats
        as projection on views.CustomerOrderStats;

    @readonly
    entity PendingOrders
        as projection on views.PendingOrders;
}