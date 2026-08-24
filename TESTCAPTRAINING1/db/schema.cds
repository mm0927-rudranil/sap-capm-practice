namespace my.bookshop;

entity Books {
    key ID : Integer;
    title  : String;
    stock  : Integer;
    state  : StateCode;
    price  : Amount;

    authors : array of String;

    ratings : array of Integer;

    // reviews : array of {
    //     userName : String;
    //     rating   : Integer;
    //     comment  : String;
    // };
}

type StateCode: String(10);



type Amount {
    value    : Decimal;
    currency : String(3);
}