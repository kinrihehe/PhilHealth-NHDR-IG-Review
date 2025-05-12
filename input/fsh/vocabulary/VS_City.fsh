ValueSet: CityVS
Id: CityVS
Title: "City Codes"
Description: "The City codes valueset includes all city values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/CityVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-03-20"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_City