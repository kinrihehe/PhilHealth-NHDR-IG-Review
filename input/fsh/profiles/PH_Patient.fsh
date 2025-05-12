Profile: PH_Patient
Parent: Patient
Id: PH-Patient
Description: "Captures key demographic and administrative information about individuals receiving care or other health-related services."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* ^status = #draft
* . ^short = "Information about an individual receiving health care services"
* . ^definition = "Demographics and other administrative information about an individual receiving care or other health-related services. The data in the resource covers the \"who\" information about the patient. Its attributes are focused on the demgraphic information necessary to support the administrative, financial and logistical procedures."
* extension contains
    PatNationality named nationality 0..* and
    Religion named religion 0..* and
    IndigenousGroup named indigenousGroup 0..* and
    IndigenousPeople named indigenousPeople 0..* and
    SpouseName named spouseName 0..* and
    FatherName named fatherName 0..* and
    MotherName named motherName 0..* and
    RecordedDate named recordedDate 0..* and
    Occupation named occupation 0..* and
    Sex named sex 0..*
* extension[nationality] ^definition = "Code representing nationality of patient."
* extension[nationality] ^comment = "This is an extension"
* extension[nationality] ^isModifier = false
* extension[religion] ^comment = "This is an extension"
* extension[religion] ^isModifier = false
* extension[indigenousGroup] ^short = "Indigenous Group"
* extension[indigenousGroup] ^definition = "The indigenerous/ethnic group where the person belongs"
* extension[indigenousGroup] ^comment = "This is an extension"
* extension[indigenousGroup] ^isModifier = false
* extension[indigenousGroup] ^binding.description = "IndigenousGroup"
* extension[indigenousPeople].value[x] only boolean
* extension[indigenousPeople] ^short = "Indigenous People"
* extension[indigenousPeople] ^definition = "Identify whether a person belongs to an indigenous/ethnic group"
* extension[indigenousPeople] ^comment = "This is an extension"
* extension[indigenousPeople] ^isModifier = false
* extension[spouseName] ^short = "Name of Spouse"
* extension[spouseName] ^definition = "Name of the spouse"
* extension[spouseName] ^comment = "This is an extension"
* extension[spouseName] ^isModifier = false
* extension[fatherName] ^short = "Name of the Father"
* extension[fatherName] ^definition = "Name of the Father"
* extension[fatherName] ^comment = "This is an extension"
* extension[fatherName] ^isModifier = false
* extension[motherName] ^short = "Name of the Mother"
* extension[motherName] ^definition = "Name of the Mother"
* extension[motherName] ^comment = "This is an extension"
* extension[motherName] ^isModifier = false
* extension[recordedDate] ^short = "Date information was recorded"
* extension[recordedDate] ^definition = "The recordedDate represents when this particular Patient record was created in the system, which is often a system-generated date."
* extension[recordedDate] ^comment = "This is an extension"
* extension[recordedDate] ^isModifier = false
* extension[occupation] ^isModifier = false
* extension[sex] ^short = "Patient's sex"
* extension[sex] ^definition = "The sex assigned at birth, as documented on the birth registration"
* extension[sex] ^isModifier = false
* extension[sex] ^binding.description = "Sex"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier for this patient.\nA numeric or alphanumeric string that is associated with a single object or entity within a given system."
* identifier contains
    philhealthID 0..1 and
    otherID 0..*
* identifier[philhealthID].use = #official (exactly)
* identifier[philhealthID] ^short = "Philhealth Number"
* identifier[philhealthID] ^definition = "PIN - PhilHealth Identification Number"
* identifier[philhealthID].system ..0
* identifier[philhealthID].period ..0
* identifier[otherID].use = #secondary (exactly)
* identifier[otherID] ^short = "Other Identification aside from the Philhealth ID"
* identifier[otherID] ^definition = "TIN, SSS, GSIS, Divers License, Passport no., National ID"
* identifier[otherID] ^comment = "TIN, SSS, GSIS, Divers License, Passport no., National ID"
* identifier[otherID].system ..0
* identifier[otherID].period ..0
* name only $SD_HumanName
* name.id ..0
* name.use ..0
* name.prefix ..0
* gender ..0
* deceased[x] ^definition = "Indicates if the individual is deceased or not.\nThe \"\"[x]\"\" is replaced with the title-cased name of the type that is actually used."
* address only $SD_Address
* maritalStatus from $MaritalStatusVS (extensible)
* maritalStatus ^definition = "This field contains a patient's most recent marital (civil) status.\nRefers to the personal status of each individual with reference to the marriage laws or customs of the country.  It is the same as \"\"civil status\"\", the term usually used in official and private records, documents, transactions, and others, in the country. \n\nAlternate Name: Civil Status"
* multipleBirth[x] ..0
* multipleBirth[x] ^slicing.discriminator.type = #type
* multipleBirth[x] ^slicing.discriminator.path = "$this"
* multipleBirth[x] ^slicing.rules = #open
* photo.id ..0
* photo.contentType ..0
* photo.language ..0
* photo.size ..0
* photo.hash ..0
* photo.creation ..0
* contact.name only $SD_HumanName
* contact.relationship from ContactRelationshipVS (extensible)
* communication ..0
* generalPractitioner ^definition = "Patient's nominated care provider. Pertains to the Konsulta Health Care Provider"
* managingOrganization ..0