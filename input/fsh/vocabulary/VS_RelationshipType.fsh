ValueSet: RelationshipTypeCS
Id: RelationshipTypeCS
Title: "Relationship Type"
Description: "A value set representing various types of relationships to the patient."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/RelationshipTypeCS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $ContactRelationshipCS
* include codes from system $RoleCodeCS where concept is-a #_PersonalRelationshipRoleType
* exclude $ContactRelationshipCS#BP
* exclude $ContactRelationshipCS#CP
* exclude $ContactRelationshipCS#EP
* exclude $ContactRelationshipCS#PR