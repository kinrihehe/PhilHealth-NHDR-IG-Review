ValueSet: ProcedureCodeVS
Id: ProcedureCodeVS
Title: "Procedure Code"
Description: "A value set representing codes for various procedures, including imaging and classification codes."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ProcedureCodeVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $RVSCodeCS
// * include codes from system $SNOMED where concept is-a #71388002
// * exclude $SNOMED#71388002