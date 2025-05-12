ValueSet: SexVS
Id: SexVS
Title: "Sex"
Description: "A person's sex at birth"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/SexVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $SexCS
* exclude $SexCS#O
* exclude $SexCS#A
* exclude $SexCS#N
* exclude $SexCS#X