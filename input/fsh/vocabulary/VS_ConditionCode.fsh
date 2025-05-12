ValueSet: ConditionCodeVS
Id: ConditionCodeVS
Title: "Condition Code"
Description: "The ICD-10 codes valueset includes values from the International Classification of Diseases (ICD), 10th Revision published by the World Health Organization (WHO) (WHO)."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ConditionCodeVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $ICD10CS
// * include codes from system https://icd.who.int/en/ - WHO Website
// * include codes from system $ICD10CS 

// * include codes from system $SNOMED where concept is-a #404684003
// * include $SNOMED#160245001

//  These are codes for PhilHealth forms (ICD10)
// * include codes from system $ConditionCode

//  These are codes for the DOH forms
// * $ConditionCodeSystem#Abrasion "Abrasion"
// * $ConditionCodeSystem#AnimalBite "Animal bite"
// * $ConditionCodeSystem#Avulsion "Avulsion"
// * $ConditionCodeSystem#Burn "Burn"
// * $ConditionCodeSystem#OpenFracture "Open fracture"
// * $ConditionCodeSystem#Crash "Crash"
// * $ConditionCodeSystem#Dental "Dental (caries/extraction)"
// * $ConditionCodeSystem#Fireworks "Fireworks"
// * $ConditionCodeSystem#InsectBite "Insect bite"
// * $ConditionCodeSystem#Laceration "Laceration"
// * $ConditionCodeSystem#Puncture "Puncture"
// * $ConditionCodeSystem#Surgery "Surgery"
// * $ConditionCodeSystem#TissueNecrosis "Tissue necrosis"
// * $ConditionCodeSystem#OthersSpecify "Others, specify"
// * $ConditionCodeSystem#Abscess "Abscess"
// * $ConditionCodeSystem#Ulcer "Ulcer"
// * $ConditionCodeSystem#Blister "Blister"
// * $ConditionCodeSystem#Gangrene "Gangrene"
// * $ConditionCodeSystem#Cellulitis "Cellulitis"
// * $ConditionCodeSystem#None "None"
// * $ConditionCodeSystem#Hypertension "Hypertension"
// * $ConditionCodeSystem#Diabetes "Diabetes"
// * $ConditionCodeSystem#HeartDisease "Heart Disease"
// * $ConditionCodeSystem#LungDisease "Lung Disease"
// * $ConditionCodeSystem#Gastrointestinal "Gastrointestinal"
// * $ConditionCodeSystem#GenitoUrinary "Genito-urinary"
// * $ConditionCodeSystem#NeurologicalDisease "Neurological Disease"
// * $ConditionCodeSystem#Cancer "Cancer"
// * $ConditionCodeSystem#Others "Others"
// * $ConditionCodeSystem#Covid19Case "Covid19 Case (Suspect, Probable or Confirmed)"
// * $ConditionCodeSystem#CloseContact "Close Contact"
// * $ConditionCodeSystem#ForRT_PCRTesting "For RT-PCR Testing (Not a case of Close Contact)"