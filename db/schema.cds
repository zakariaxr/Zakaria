namespace hc450_officesupplie;

using {Currency} from '@sap/cds/common';

entity Products {
 @Common.Label : 'UUID'
 key ID : UUID;
 identifier : String @Common.Label : 'ProductID';
 title : String @(Common.Label : 'Name');
 description : String;
 availability : Integer;
 storage_capacity : Integer;
 criticality : Integer;
 price : Decimal(9, 2);
 currency : Currency;
 supplier : Association to Suppliers;
 image_url : String;
}

entity Suppliers {
 key ID : UUID;
 identifier : String;
 name : String;
 phone : String;
 building : String;
 street : String @multiline;
 postCode : String;
 city : String;
 country : String;
 products : Composition of many Products
 on products.supplier = $self;
}