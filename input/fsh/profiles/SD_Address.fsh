Profile: PH_Address
Parent: Address
Id: PH-Address
Description: "An address for the individual."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Address"
* ^status = #draft
* extension contains
    Region named region 0..* and
    Province named province 0..* and
    CityMunicipality named cityMunicipality 0..* and
    Barangay named barangay 0..*
* extension[region] ^isModifier = false
* extension[province] ^isModifier = false
* extension[cityMunicipality] ^isModifier = false
* extension[barangay] ^isModifier = false