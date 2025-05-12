ValueSet: ObservationMethodVS
Id: ObservationMethodVS
Title: "Observation Method"
Description: "A value set representing observation methods such as modes of transportation."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ObservationMethodVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
// These are codes used in CIF
* include codes from system $ObservationMethodCS

//  These are codes from the Master & Reference data (used in HBCR Form 3)
* include codes from system $SNOMED where concept is-a #272394005
* include codes from system $SNOMED where concept is-a #129264002
* include codes from system $SNOMED where concept is-a #386053000