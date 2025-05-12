//  We need to double check the alias list here eventually
Alias: $allergyintolerance-clinical = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical
Alias: $allergyintolerance-verification = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $ClinicalStatusValueSet = https://nhdr.gov.ph/fhir/ValueSet/ClinicalStatusValueSet
Alias: $ConditionVerificationStatusValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionVerificationStatusValueSet
Alias: $ConditionCodeValueSet = http://nhdr.gov.ph/fhir/ValueSet/ConditionCodeValueSet
Alias: $cvx = http://hl7.org/fhir/sid/cvx
Alias: $location-physical-type = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $loinc = http://loinc.org
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $ProcedureCodeValueSet = http://nhdr.gov.ph/fhir/ValueSet/ProcedureCodeValueSet
Alias: $rxnorm = http://www.nlm.nih.gov/research/umls/rxnorm
Alias: $sct = http://snomed.info/sct
Alias: $v2-0074 = http://terminology.hl7.org/CodeSystem/v2-0074
Alias: $v2-0203 = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: $v2-0286 = http://terminology.hl7.org/CodeSystem/v2-0286
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $v3-MaritalStatus = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation






Instance: Encounter-1
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-07-18T06:52:48.696+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeYears"
* extension[=].valueInteger = 30
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeMonths"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/AgeDays"
* extension[=].valueInteger = 0
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/PatientClassification"
* extension[=].valueString = "Inpatient"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Interviewer"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Santos"
* extension[=].valueHumanName.given = "Maria"
* extension[=].valueHumanName.prefix = "Ms."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/InvestigatorName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Reyes"
* extension[=].valueHumanName.given = "Juan"
* extension[=].valueHumanName.prefix = "Dr."
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInterview"
* extension[=].valueDateTime = "2024-07-18T08:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateInvestigation"
* extension[=].valueDateTime = "2024-07-19T10:00:00+08:00"
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ReporterName"
* extension[=].valueHumanName.use = #official
* extension[=].valueHumanName.family = "Dela Cruz"
* extension[=].valueHumanName.given = "Luis"
* extension[=].valueHumanName.prefix = "Mr."
* identifier.use = #official
* identifier.type = $v2-0203#FI "Philhealth code"
* identifier.system = "https://nhdr.gov.ph/fhir/philHealthID"
* identifier.value = "PH123456"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#183452005 "General examination of patient (procedure)"
* subject = Reference(Patient/Patient-1)
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* location.location = Reference(Location/Location-General-Hospital-Room-101) "General Hospital Room"
* location.status = #completed

Instance: Encounter-2
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-10T21:58:34.129+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-AFP
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.499+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLACCIDPARALYSIS "Flaccid Paralysis Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-COVID
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.628+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#COVIDENC "COVID-19 Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Diphteria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:04.041+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#DIPENC "Diphtheria Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-HFMD
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.468+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#HFMDENC "Hand, Foot, and Mouth Disease Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Influenza
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.428+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#FLUENC "Influenza Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Leptospirosis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.378+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#LEPTENC "Leptospirosis Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Malaria
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:21:00.067+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MALENC "Malaria Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Meningococcal
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.763+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#MENINGENC "Meningococcal Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.2+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNEOENC "Neonatal Tetanus Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Non-Neonatal-Tetanus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.506+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#TETNNENC "Non-Neonatal Tetanus Encounter"
* subject = Reference(Patient/Patient-1)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Pertussis
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:50.083+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#PERTENC "Pertussis Encounter"
* subject = Reference(Patient/Patient-2)
* class = $v3-ActCode#AMB "ambulatory"

Instance: Encounter-Rotavirus
InstanceOf: PH_Encounter
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.573+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* status = #in-progress
* type = $v3-ActCode#ROTAENC "Rotavirus Encounter"
* subject = Reference(Patient/Patient-3)
* class = $v3-ActCode#AMB "ambulatory"


Instance: Location-General-Hospital-Room-101
InstanceOf: PH_Location
Usage: #example
// * meta.lastUpdated = "2024-07-18T06:57:37.403+00:00"
* name = "General Hospital Room 101"
// * physicalType = $location-physical-type#ro "Room"
* address.use = #work
* address.line = "1234 Health St."
* address.city = "Health City"
* address.state = "Health State"
* address.postalCode = "12345"
* address.country = "PH"

Instance: Medication-Amoxicillin
InstanceOf: PH_Medication
Usage: #example
* meta.lastUpdated = "2024-12-10T21:44:29.157+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/DateUpdated"
* extension[=].valueDateTime = "2024-12-10T20:00:00.157+00:00"
* code.text = "Amoxicillin 500mg Capsule"

Instance: MedicationAdministration-Amoxicillin
InstanceOf: PH_MedicationAdministration
Usage: #example
* meta.lastUpdated = "2024-07-18T07:54:59.254+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtOrganization"
* extension[=].valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtEncounter"
* extension[=].valueReference = Reference(Encounter/Encounter-Pertussis)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/RecordedDate"
* extension[=].valueDateTime = "2024-07-18T10:00:00+08:00"
* status = #completed
* medicationCodeableConcept = $rxnorm#860975 "Amoxicillin 250mg/5ml Suspension"
* medicationCodeableConcept.text = "Amoxicillin 250mg/5ml Suspension"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-07-18T09:00:00+08:00"
* reasonCode = $sct#65363002 "Infection"
* reasonCode.text = "Infection"
* dosage.text = "5 mL orally three times a day"
* dosage.site = $sct#181220002 "Oral cavity"
* dosage.site.text = "Oral cavity"
* dosage.route = $sct#26643006 "Oral route"
* dosage.route.text = "Oral route"
* dosage.method = $sct#421521009 "Swallow"
* dosage.method.text = "Swallow"
* dosage.dose = 5 'mL' "mL"
* dosage.rateRatio.numerator = 5 'mL' "mL"
* dosage.rateRatio.denominator = 1 'd' "d"

Instance: MedicationDispense-Completed
InstanceOf: PH_MedicationDispense
Usage: #example
* meta.lastUpdated = "2024-12-10T21:44:29.21+00:00"
* status = #completed
* medicationReference = Reference(Medication-Amoxicillin)

Instance: Observation-Glucose-in-Blood
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-07-14T08:14:50.38+00:00"
* identifier.use = #official
* identifier.system = "http://www.bmc.nl/zorgportal/identifiers/observations"
* identifier.value = "6323"
* status = #final
* code = $loinc#15074-8 "Glucose [Moles/volume] in Blood"
* subject = Reference(Patient/Patient-1) "P. van de Heuvel"
* effectiveDateTime = "2013-04-02T09:30:10+01:00"
// * issued = "2013-04-03T15:30:10+01:00"
* performer = Reference(Practitioner/Practitioner-1) "A. Langeveld"
* valueQuantity = 6.3 'mmol/L' "mmol/l"
* interpretation = $v3-ObservationInterpretation#H "High"
// * referenceRange.low = 3.1 'mmol/L' "mmol/l"
// * referenceRange.high = 6.2 'mmol/L' "mmol/l"

Instance: Observation-AFP
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:38:57.453+00:00"
* status = #final
* code = $loinc#80358-3 "Observation of Acute Flaccid Paralysis"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sudden onset of flaccid paralysis in one limb."

Instance: Observation-Rabies-Antibody-Test
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:32.041+00:00"
* status = #final
* code = $loinc#29965-3 "Rabies virus antibody test"
* code.text = "Rabies Virus Antibody Test Result"
* valueString = "Positive for rabies virus antibodies"

Instance: Observation-COVID
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:30:08.578+00:00"
* status = #final
* code = $loinc#94500-6 "Observation of COVID-19 Symptoms"
* subject = Reference(Patient/Patient-2)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, cough, difficulty breathing, and loss of taste or smell."

Instance: Observation-Diphtheria
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:23:03.986+00:00"
* status = #final
* code = $loinc#1234-5 "Observation of Diphtheria Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sore throat, swollen neck, and hoarseness of voice."

Instance: Observation-HFMD
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:29:16.418+00:00"
* status = #final
* code = $loinc#80386-9 "Observation of Hand, Foot, and Mouth Disease Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, mouth sores, and rashes on hands and feet."

Instance: Observation-Influenza
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:18:19.385+00:00"
* status = #final
* code = $loinc#LA6576-8 "Observation of Influenza Symptoms"
* subject = Reference(Patient/Patient-2)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits high fever, persistent cough, and difficulty breathing."

Instance: Observation-Leptospirosis
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:19:32.074+00:00"
* status = #final
* code = $loinc#80347-6 "Observation of Leptospirosis Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, muscle pain, and recent exposure to floodwaters."

Instance: Observation-Malaria
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:20:59.977+00:00"
* status = #final
* code = $loinc#80375-2 "Observation of Malaria Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits fever, chills, and recent travel to malaria-endemic areas."

Instance: Observation-Measles
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:35:52.056+00:00"
* status = #final
* subject = Reference(Patient/Patient-2)
* code = #10582-5

Instance: Observation-Meningococcal
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:28:20.722+00:00"
* status = #final
* code = $loinc#80385-1 "Observation of Meningococcal Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits sudden fever, headache, stiff neck, and purpuric rash."

Instance: Observation-Neonatal-Tetanus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:24:46.146+00:00"
* status = #final
* code = $loinc#80380-2 "Observation of Neonatal Tetanus Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Infant exhibits muscle stiffness, difficulty feeding, and history of unhygienic delivery."

Instance: Observation-Non-Neonatal-Tetanus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:27:08.457+00:00"
* status = #final
* code = $loinc#80384-4 "Observation of Tetanus Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits muscle stiffness and spasms following a recent injury with exposure to potentially contaminated objects."

Instance: Observation-Pertussis
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:25:50.028+00:00"
* status = #final
* code = $loinc#12345-6 "Observation of Pertussis Symptoms"
* subject = Reference(Patient/Patient-3)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits prolonged coughing spells and vomiting after coughing."

Instance: Observation-Rotavirus
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T04:17:08.505+00:00"
* status = #final
* code = $loinc#80360-9 "Observation of Rotavirus Symptoms"
* subject = Reference(Patient/Patient-1)
* effectiveDateTime = "2024-12-11T15:00:00Z"
* valueString = "Patient exhibits acute gastroenteritis with frequent loose stools."

Instance: Observation-Rubella
InstanceOf: PH_Observation
Usage: #example
* meta.lastUpdated = "2024-12-12T03:35:52.428+00:00"
* status = #final
* code = $loinc#20458-6 "Rubella virus IgG Ab [Interpretation] in Serum"
* subject = Reference(Patient/Patient-2)

// Instance: Observation-SARI
// InstanceOf: PH_Observation
// Usage: #example
// * meta.lastUpdated = "2024-12-12T03:37:36.595+00:00"
// * status = #final
// * subject = Reference(Patient/b160ce3e-91f6-4ee5-bf72-248a49e2047f)

Instance: Organization-1
InstanceOf: PH_Organization
Usage: #example
* id = "12345"
* meta.lastUpdated = "2024-07-18T06:40:29.709+00:00"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #fax
* telecom[=].value = "(+1) 734-677-6622"
* telecom[+].system = #email
* telecom[=].value = "organization@org.com"

Instance: Organization-2
InstanceOf: PH_Organization
Usage: #example
* meta.lastUpdated = "2024-07-18T06:47:13.861+00:00"
* extension.url = "https://example.org/fhir/StructureDefinition/HeadName"
* extension.valueHumanName.family = "Quezon"
* extension.valueHumanName.given[0] = "Mark"
* extension.valueHumanName.given[+] = "John"
* telecom[0].system = #phone
* telecom[=].value = "(+1) 734-677-7777"
* telecom[+].system = #fax
* telecom[=].value = "(+1) 734-677-6622"
* telecom[+].system = #email
* telecom[=].value = "organization@org.com"

Instance: Organization-Lucena-General-Hospital
InstanceOf: PH_Organization
Usage: #example
* meta.lastUpdated = "2024-12-11T05:00:32.005+00:00"
* type = $organization-type#prov "Healthcare Provider"
* name = "Lucena General Hospital"

Instance: Patient-1
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-07-12T14:07:16.25+00:00"
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* language = #en-IN
* identifier[0].use = #official
* identifier[=].type.coding.code = #NIIP
* identifier[=].value = "PH12345"
* identifier[+].use = #secondary
* identifier[=].type.coding.code = #DL
* identifier[=].value = "DL12345"
* identifier[+].use = #secondary
* identifier[=].type.coding.code = #PPN
* identifier[=].value = "PPN25"
* active = true
* name.text = "Example Patient"
* name.family = "Patient"
* name.given = "Example"
* telecom.system = #phone
* telecom.value = "abc"
* telecom.use = #home
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "137 Nowhere Street, Erewhon 9132"
* address.line = "137 Nowhere Street"
* address.city = "Erewhon"
* address.district = "Madison"
* address.state = "abc"
* address.postalCode = "9132"
* address.country = "abc"
* maritalStatus.text = "abc"
* birthDate = 2025-12-12
// * managingOrganization = Reference(12345) "12345"

Instance: Patient-2
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-07-18T04:48:00.401+00:00"
* identifier[0].use = #PhilhealthID
* identifier[=].value = "12345"
* identifier[+].use = #PhilsysID
* identifier[=].value = "678910"
* active = true
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
// * name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
* telecom[=].use = #mobile

Instance: Patient-3
InstanceOf: PH_Patient
Usage: #example
* meta.lastUpdated = "2024-12-10T01:35:07.723+00:00"
* meta.profile = "http://hl7.org.ph/fhir/StructureDefinition/PH_Patient"
* identifier[0].system = "http://philsys.gov.ph/national-id"
* identifier[=].value = "PH1234567890"
* identifier[+].system = "http://hl7.org.ph/fhir/StructureDefinition/PhilHealthID"
* identifier[=].value = "123456789012"
// * name.use = #official
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "A."
* telecom[0].system = #phone
* telecom[=].value = "+639171234567"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "john.doe@example.com"
* telecom[=].use = #home
// * gender = #male
* birthDate = "1990-01-01"
* address.use = #home
* address.line = "123 Barangay Street"
* address.city = "Quezon City"
* address.district = "District 1"
* address.state = "Metro Manila"
* address.postalCode = "1100"
* address.country = "PH"
* maritalStatus = $v3-MaritalStatus#M "Married"
// * contact.relationship = ContactRelationshipVS#C "Emergency Contact"
* contact.name.family = "Doe"
* contact.name.given = "Jane"
* contact.telecom.system = #phone
* contact.telecom.value = "+639181234567"
* contact.telecom.use = #mobile
* contact.address.line = "456 Barangay Lane"
* contact.address.city = "Pasig City"
* contact.address.state = "Metro Manila"
* contact.address.postalCode = "1600"
* contact.address.country = "PH"
// * communication[0].language = urn:ietf:bcp:47#en "English"
// * communication[=].preferred = true
// * communication[+].language = urn:ietf:bcp:47#tl "Tagalog"
// * communication[=].preferred = false

Instance: Person-1
InstanceOf: PH_Person
Usage: #example
* meta.lastUpdated = "2024-07-18T07:21:35.241+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #male
* name.use = #official
* name.family = "Garcia"
* name.given = "Juan"
* name.prefix = "Mr."
* telecom[0].system = #phone
* telecom[=].value = "+1234567890"
* telecom[=].use = #mobile
* telecom[+].system = #email
* telecom[=].value = "juan.garcia@example.org"
* telecom[=].use = #home
* birthDate = "1990-01-01"
* address.use = #home
* address.line = "1234 Health St."
* address.city = "Health City"
* address.state = "Health State"
* address.postalCode = "12345"
* address.country = "PH"
* link.target = Reference(Patient/Patient-3)

Instance: Person-2
InstanceOf: PH_Person
Usage: #example
* meta.lastUpdated = "2024-12-10T08:52:07.402+00:00"
* name.use = #official
* name.family = "Doe"
* name.given = "Jane"
* birthDate = "1995-05-15"

Instance: Practitioner-1
InstanceOf: PH_Practitioner
Usage: #example
* meta.lastUpdated = "2024-07-18T06:13:47.993+00:00"
* identifier.use = #PRC
* identifier.value = "12345"
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
* name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
* telecom[=].use = #mobile

Instance: Practitioner-2
InstanceOf: PH_Practitioner
Usage: #example
* meta.lastUpdated = "2024-12-09T23:18:00.365+00:00"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #Male
* identifier.use = #PRC
* identifier.value = "12345"
* name.extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/MiddleName"
* name.extension.valueString = "Rizal"
* name.use = #official
* name.family = "Dela Cruz"
* name.given[0] = "Juan"
* name.given[+] = "Pedro"
* name.given[+] = "Santos"
* telecom[0].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[+].system = #phone
* telecom[=].value = "(0939) 929 3814"
* telecom[=].use = #mobile

Instance: PractitionerRole-Physician
InstanceOf: PH_PractitionerRole
Usage: #example
* meta.lastUpdated = "2024-07-18T06:26:14.058+00:00"
* code = $v2-0286#Physician

Instance: Procedure-Surgical
InstanceOf: PH_Procedure
Usage: #example
* meta.lastUpdated = "2024-07-18T07:30:27.458+00:00"
* extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Organization"
* extension[=].valueReference = Reference(Organization/Organization-Lucena-General-Hospital)
* extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/RecordedDate"
* extension[=].valueDateTime = "2024-07-18T10:00:00+08:00"
// * extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/IllnessClass"
// * extension[=].valueCodeableConcept = $illness-class-codes#D123 "Diabetes mellitus type 2"
// * extension[=].valueCodeableConcept.text = "Diabetes mellitus type 2"
* status = #completed
* category = $sct#387713003 "Surgical procedure"
* code = $sct#80146002 "Appendectomy"
* code.text = "Appendectomy"
* subject = Reference(Patient/Patient-3)
* performedDateTime = "2024-07-18T09:00:00+08:00"

Instance: Procedure-Appendectomy
InstanceOf: PH_Procedure
Usage: #example
* meta.lastUpdated = "2024-12-10T14:28:43.739+00:00"
* status = #completed
* code = $ProcedureCodeValueSet#12345 "Appendectomy"
* subject = Reference(Patient/Patient-1)
* performedPeriod.start = "2024-12-05T08:00:00+08:00"
