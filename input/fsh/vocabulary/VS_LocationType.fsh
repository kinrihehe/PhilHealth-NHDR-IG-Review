ValueSet: LocationTypeVS
Id: LocationTypeVS
Title: "Location Type"
Description: "A valueset representing different types of healthcare-related locations."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/LocationTypeVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $RoleCodeCS where concept is-a #_ServiceDeliveryLocationRoleType
* exclude $RoleCodeCS#_ServiceDeliveryLocationRoleType	
* exclude $RoleCodeCS#_IncidentalServiceDeliveryLocationRoleType
* exclude $RoleCodeCS#_DedicatedNonClinicalLocationRoleType
* exclude $RoleCodeCS#_DedicatedClinicalLocationRoleType
* exclude $RoleCodeCS#_DedicatedServiceDeliveryLocationRoleType