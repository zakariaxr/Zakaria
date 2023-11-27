using hc450_officesupplie from '../db/schema.cds';

service hc450_officesupplies {
// @odata.draft.enabled :true
 entity Products as projection on hc450_officesupplie.Products;
};