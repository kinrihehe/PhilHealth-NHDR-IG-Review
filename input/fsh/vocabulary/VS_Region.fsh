ValueSet: RegionVS
Id: RegionVS
Title: "Region Codes"
Description: "The Region codes valueset includes all regions values from the Philippine Standard Geographic Codes (PSGC) published by the Philippine Statistic Authority (PSA)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/RegionVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2025-03-20"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $PSGCCS
// * include codes from system $PSGCCS where concept is-a #_Region