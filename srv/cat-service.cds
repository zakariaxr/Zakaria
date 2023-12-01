using hc450_officesupplie from '../db/schema.cds';

service hc450_officesupplies {
// @odata.draft.enabled :true
 entity Products as projection on hc450_officesupplie.Products;
 entity Suppliers as projection on hc450_officesupplie.Suppliers;
 
 function get_supplier_info() returns array of Suppliers;

};