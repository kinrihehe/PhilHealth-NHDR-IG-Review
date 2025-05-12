ValueSet: ImmunizationStatusVS
Id: ImmunizationStatusVS
Title: "Immunization Status"
Description: "A value set representing the status of immunization."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationStatusVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include $ImmunizationStatusCS#completed "Completed"
* include $ImmunizationStatusCS#entered-in-error "Entered in Error" 
* include $ImmunizationStatusCS#not-done "Not Done"