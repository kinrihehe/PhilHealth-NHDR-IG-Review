Profile: PH_Organization
Parent: Organization
Id: PH-Organization
Title: "PH Organization"
Description: "Refers to a formally or informally recognized grouping of people or entities that are formed to achieve a common goal, particularly in healthcare."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* insert MetaData
* . ^definition = "A formally or informally recognized grouping of people or organizations formed for the purpose of achieving some form of collective action. Includes companies, institutions, corporations, departments, community groups, healthcare practice groups, payer/insurer, etc.\n\nAlternate Name: Health Facility Registry."
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension contains
    HeadName named headName 0..* and
    HeadPosition named headPosition 0..* and
    HeadTelecom named headTelecom 0..*
* modifierExtension ..0
// * identifier only $FHUDCode or $OtherID
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    DOHFHUDCode 0..* and
    PEN 0..* and
    PAN 0..*
* identifier[DOHFHUDCode].system = "http://nhdr.gov.ph/fhir/Identifier/dohfhudcode-id"
* identifier[DOHFHUDCode].type.coding from $HealthFacilityVS
* identifier[PEN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthemployernumber"
* identifier[PEN].type.coding = #EN
* identifier[PAN].system = "http://nhdr.gov.ph/fhir/Identifier/philhealthaccreditationnumber"
* identifier[PAN].type.coding = #AN
// * active ..0
* type from $OrganizationTypeVS (required)
// * name ..0
* alias ..0
* telecom.id ..0
* telecom.extension ..0
* telecom.use ..0
* telecom.rank ..0
* telecom.period ..0
* address only $SD_Address
* partOf ..0
// * contact ..0
* contact.id ..0
* contact.extension ..0
* contact.modifierExtension ..0
* contact.purpose ..0
* contact.name
* contact.address only $SD_Address
* endpoint ..0



//  Notes:
//  SD_DOHFHUDCode needs to be updated with specifics