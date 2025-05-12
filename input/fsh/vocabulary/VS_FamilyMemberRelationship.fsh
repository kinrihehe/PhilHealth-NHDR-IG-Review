ValueSet: FamilyMemberRelationshipVS
Id: FamilyMemberRelationshipVS
Title: "Family Member Relationship"
Description: "A valueset representing the relationships between a patient and their family members."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/FamilyMemberRelationshipVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $RoleCodeCS where concept is-a #FAMMEMB