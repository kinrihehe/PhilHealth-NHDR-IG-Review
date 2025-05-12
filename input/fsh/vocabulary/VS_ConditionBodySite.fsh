ValueSet: ConditionBodySiteVS
Id: ConditionBodySiteVS
Title: "Condition Body Site"
Description: "A value set representing various body sites relevant to specific conditions."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ConditionBodySiteVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $SNOMED where concept is-a #442083009