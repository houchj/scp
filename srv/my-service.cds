using com.sap from '../db/data-model';
using sap.common from '@sap/cds/common';

// [ADDING EXTERNAL SERVICE] To add entities from external services:
// [ADDING EXTERNAL SERVICE] - STEP 1 - Add a data model from an external service to the project (by selecting the relevant menu option in SAP Web IDE).
// [ADDING EXTERNAL SERVICE] - STEP 2 - Add a reference to the external service model file:
// using <external_service_name> as <alias_name> from '../srv/external/csn/<external_service_name>';

service CatalogService {

  entity Books @readonly as projection on sap.Books;
  entity Authors @readonly as projection on sap.Authors;
  entity Orders @insertonly as projection on sap.Orders;
  // TODO @cdsv: should be cds.autoexposed -> then we can remove that:
  entity Countries as projection on common.Countries;
  
}
