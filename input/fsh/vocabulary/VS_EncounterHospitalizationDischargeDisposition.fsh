ValueSet: EncounterHospitalizationDischargeDispositionVS
Id: EncounterHospitalizationDischargeDispositionVS
Title: "Encounter Hospitalization Discharge Disposition"
Description: "A value set containing a set of discharge disposition codes used to document the status or disposition of a patient after hospitalization."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/EncounterHospitalizationDischargeDispositionVS"
* ^version = "4.0.1"
* ^status = #active
* ^language = #en-US
* ^experimental = false
* ^date = "2024-11-26"
* ^publisher = "NHDR"
* ^contact.name = "Support Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "support@example.org"
* ^jurisdiction = urn:iso:std:iso:3166#PH "Philippines"
* ^immutable = false
* include codes from system $EncounterHospitalizationDischargeDispositionCS
// * include $EncounterHospitalizationDischargeDispositionCS#R "Recovered"
// * include $EncounterHospitalizationDischargeDispositionCS#I "Improved"
// * include $EncounterHospitalizationDischargeDispositionCS#A "Absconded"