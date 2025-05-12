ValueSet: EncounterClassificationVS
Id: EncounterClassificationVS
Title: "Encounter Classification"
Description: "A value set representing codes for classification of encounter"
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/EncounterClassificationVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $EncounterClassificationCS where concept is-a #_ActEncounterCode
* exclude $EncounterClassificationCS#_ActEncounterCode