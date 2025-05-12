ValueSet: ImmunizationStatusReasonVS
Id: ImmunizationStatusReasonVS
Title: "Immunization Status Reason"
Description: "A value set representing reasons for immunization status."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationStatusReasonVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* $ImmunizationStatusReasonCS#IMMUNE "immunity"
* $ImmunizationStatusReasonCS#MEDPREC "medical precaution"
* $ImmunizationStatusReasonCS#OSTOCK "product out of stock"
* $ImmunizationStatusReasonCS#PATOBJ "patient objection"
// * include codes from system $SNOMED where concept is-a #310376006