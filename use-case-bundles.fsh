// ========== Claims Form 1-1 ========
Instance: ClaimsForm1-1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:patient-1"
* entry[=].resource = Patient-1
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:relatedperson-1"
* entry[=].resource = RelatedPerson-1
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:organization-1"
* entry[=].resource = Org-1
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaire-1"
* entry[=].resource = Questionnaire-1
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse-1"
* entry[=].resource = QuestionnaireResponse-1
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"

Instance: Patient-1
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH12345"
* name.family = "Pascua"
* name.given[0] = "Antonio Jerome"
* name.given[+] = "Morales"
* name.suffix = "Mr."
* birthDate = "1994-02-25"
* contact.relationship = #E "Employer"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #M

Instance: RelatedPerson-1
InstanceOf: RelatedPerson
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* patient = Reference(Patient-1)
* name.family = "Razal"
* name.given[0] = "Emily Frances Lourdes"
* name.given[+] = "Aberin"
* name.suffix = "Mrs."
* birthDate = "1971-02-11"
* address.line = "Fordham Road"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = #0123456789 "Blue Ridge"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = #0123456 "Quezon City"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = #01234 "Metro Manila"
* address.country = "PH"
* address.postalCode = "1110"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #F
* telecom[0].value = "912-00-00"
* telecom[+].value = "0927-000-0000"
* telecom[+].value = "earazal@email.com"

Instance: Org-1
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: Questionnaire-1
InstanceOf: Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* item[0].linkId = "1"
* item[=].text = "Patient is the member?"
* item[=].type = #boolean
* status = #active

Instance: QuestionnaireResponse-1
InstanceOf: QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* questionnaire = "Questionnaire/Questionnaire-1"
* item[0].linkId = "1"
* item[=].text = "Patient is the member?"
* item[=].answer.valueBoolean = false
* status = #in-progress

// ========== Claims Form 1-2 ========
Instance: ClaimsForm1-2
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF1"
* entry[0].fullUrl = "urn:uuid:patient-2"
* entry[=].resource = Patient-2
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:relatedperson-2"
* entry[=].resource = RelatedPerson-2
* entry[=].request.method = #POST
* entry[=].request.url = "RelatedPerson"
* entry[+].fullUrl = "urn:uuid:organization-2"
* entry[=].resource = Org-2
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaire-2"
* entry[=].resource = Questionnaire-2
* entry[=].request.method = #POST
* entry[=].request.url = "Questionnaire"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse-2"
* entry[=].resource = QuestionnaireResponse-2
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"

Instance: Patient-2
InstanceOf: Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* link.other = Reference(RelatedPerson/RelatedPerson-2)
* link.type = #refer

Instance: RelatedPerson-2
InstanceOf: RelatedPerson
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-RelatedPerson"
* identifier.type.coding.code = #NIIP
* identifier.type.text = "PhilHealth Identification Number"
* identifier.value = "PH54321"
* patient = Reference(Patient/Patient-2)
* name.family = "Razal"
* name.given[0] = "Emily Frances Lourdes"
* name.given[+] = "Aberin"
* name.suffix = "Mrs."
* birthDate = "1971-02-11"
* address.line = "Fordham Road"
* address.extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Barangay"
* address.extension[=].valueCoding = #0123456789 "Blue Ridge"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address.extension[=].valueCoding = #0123456 "Quezon City"
* address.extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address.extension[=].valueCoding = #01234 "Metro Manila"
* address.country = "PH"
* address.postalCode = "1110"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/Sex"
* extension.valueCode = #F
* telecom[0].value = "912-00-00"
* telecom[+].value = "0927-000-0000"
* telecom[+].value = "earazal@email.com"

Instance: Org-2
InstanceOf: Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #EN
* identifier.type.text = "PhilHealth Employer Number (PEN)"
* identifier.value = "EN15243"
* telecom.value = "080-00-00"
* name = "PhilHealth"

Instance: Questionnaire-2
InstanceOf: Questionnaire
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Questionnaire"
* item[0].linkId = "1"
* item[=].text = "Patient is the member?"
* item[=].type = #boolean
* status = #active

Instance: QuestionnaireResponse-2
InstanceOf: QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* questionnaire = "Questionnaire/Questionnaire-2"
* item[0].linkId = "1"
* item[=].text = "Patient is the member?"
* item[=].answer.valueBoolean = true
* status = #in-progress


// ========== Claims Form 2 ==========

Alias: $sct = http://snomed.info/sct
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $RVSCodeCS = https://nhdr.gov.ph/fhir/CodeSystem/RVSCodeCS
Alias: $CodeSystem-location-physical-type.html = http://terminology.hl7.org/CodeSystem/location-physical-type
Alias: $ICD = http://hl7.org/fhir/sid/icd-10

Instance: ClaimsForm2
InstanceOf: Bundle
Usage: #example
* type = #transaction
* identifier.system = "http://nhdr.gov.ph/fhir/ValueSet-form-type"
* identifier.value = "CF2"
* entry[0].fullUrl = "urn:uuid:patient"
* entry[=].resource = CF2-Patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"
* entry[+].fullUrl = "urn:uuid:organization"
* entry[=].resource = CF2-Org
* entry[=].request.method = #POST
* entry[=].request.url = "Organization"
* entry[+].fullUrl = "urn:uuid:questionnaireresponse"
* entry[=].resource = CF2-QuestionnaireResponse
* entry[=].request.method = #POST
* entry[=].request.url = "QuestionnaireResponse"
* entry[+].fullUrl = "urn:uuid:encounter"
* entry[=].resource = CF2-Encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"
* entry[+].fullUrl = "urn:uuid:condition"
* entry[=].resource = CF2-Condition
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"
* entry[+].fullUrl = "urn:uuid:procedure"
* entry[=].resource = CF2-Procedure
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

Instance: CF2-Patient
InstanceOf: PH_Patient
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Patient"
* name.family = "Doe"
* name.given[0] = "John"
* name.given[+] = "Harris"
* name.suffix = "Mr."

Instance: CF2-Org
InstanceOf: PH_Organization
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Organization"
* identifier.type.coding.code = #AN
* identifier.type.text = "PhilHealth Accreditation Number (PAN)"
* identifier.value = "AN199513893"
* name = "6th General Hospital"
* address[0].line = "137 Fourth Street"
* address[=].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[=].extension[=].valueCoding = #0123456 "Marikina City"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[=].extension[=].valueCoding = #01234 "Metro Manila"
* address[=].postalCode = "1110"
* address[+].line = "125 Fordham"
* address[=].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[=].extension[=].valueCoding = #0123457 "Pasay City"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[=].extension[=].valueCoding = #01234 "Metro Manila"
* address[=].postalCode = "1101"
* address[+].line = "12 Riverdale Street"
* address[=].extension[0].url = "https://nhdr.gov.ph/fhir/StructureDefinition/CityMunicipality"
* address[=].extension[=].valueCoding = #0123458 "Pasig City"
* address[=].extension[+].url = "https://nhdr.gov.ph/fhir/StructureDefinition/Province"
* address[=].extension[=].valueCoding = #01234 "Metro Manila"
* address[=].postalCode = "1102"

Instance: CF2-QuestionnaireResponse
InstanceOf: PH_QuestionnaireResponse
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-QuestionnaireResponse"
* item.answer.valueBoolean = true
* item.linkId = "Was Patient referred by another HCI? [Yes/No]"
* status = #in-progress

Instance: CF2-Encounter
InstanceOf: PH_Encounter
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Encounter"
* hospitalization.origin = Reference(Location/Location-General-Hospital-Room-101) "General Hospital Room"
* hospitalization.destination = Reference(Location/Location-General-Hospital-Room-101) "General Hospital Room"
* period.start = "2024-07-18T08:00:00+08:00"
* period.end = "2024-07-18T10:00:00+08:00"
* reasonCode = $sct#109006 "Anxiety disorder of childhood OR adolescence"
* reasonCode.text = "Anxiety disorder of childhood OR adolescence"
* location.location = Reference(Location/Location-General-Hospital-Room-101) "General Hospital Room"
* location.physicalType = $CodeSystem-location-physical-type.html#wa "Ward"
* diagnosis.condition = Reference(Condition/Condition-1) "Diabetes mellitus type 2"
* status = #triaged
* class = $v3-ActCode#EMER "emergency"
//  Encounter.location.location, Encounter.status and Encounter.class are not captured in CF2, but are mandatory elements

Instance: CF2-Condition
InstanceOf: PH_Condition
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Condition"
* clinicalStatus = $condition-clinical#0 "Active"
* clinicalStatus.text = "Active"
* code = $ICD#A00 "Cholera"
* subject = Reference(CF2-Patient) "CF2 Patient"
//  Condition.subject is not captured, but is mandatory

Instance: CF2-Procedure
InstanceOf: PH_Procedure
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Procedure"
* code = $RVSCodeCS#10060 "INCISION AND DRAINAGE OF ABSCESS (E.G., CARBUNCLE, SUPPURATIVE HIDRADENITIS, CUTANEOUS OR SUBCUTANEOUS ABSCESS, CYST, FURUNCLE, OR PARONYCHIA)"
* performedDateTime = "2025-04-15T10:00:00.000Z"
* bodySite = $sct#108003 "Entire condylar emissary vein"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/IllnessClass"
* extension.valueCodeableConcept = $sct#108003 "Entire condylar emissary vein"
* status = #preparation
* subject = Reference(CF2-Patient) "CF2 Patient"
//  Procedure.subject is not captured, but is mandatory

Instance: CF2-Practitioner
InstanceOf: PH_Practitioner
Usage: #inline
* meta.profile = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-Practitioner"
* identifier.value = "1231231"
* name.family = "Dela Cruz"
* name.given[0] = "Sheena"
* name.given[+] = "Abesamis"
* extension.url = "https://nhdr.gov.ph/fhir/StructureDefinition/ExtSignature"
* extension.valueSignature.when = "2025-04-15T10:30:00Z"
* extension.valueSignature.data = "dGVzdFNpZ25hdHVyZQ=="
* extension.valueSignature.type = #1.2.840.10065.1.12.1.1 "Author's Signature"
* extension.valueSignature.who = Reference(Practitioner/CF2-Practitioner)
