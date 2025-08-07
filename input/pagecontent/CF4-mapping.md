<html>
    <style>
        table, thead, td{
            border:2px solid #ccc; 
            border-collapse:collapse; 
        }
        table {
            table-layout: fixed;
            width: 100%;
        }
        table th:nth-child(4) { width: 10%; }
        table th:nth-child(5) { width: 10%; }
    </style>
    <ul class="nav nav-tabs">
        <li><a href="CF4.html">Content</a></li>
        <li class="active"><a href="#">Mappings</a></li>
        <li><a href="CF4-json.html">Sample JSON Bundles</a></li>
    </ul>
</html>

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>ValueSet <br><i>(if any)</i></center> |
|:---------|:---------|:--------|:--------:|:----------:|
| Series # | Claim.identifier | Identifier | 0..* | --- |
| **Part I - Health Care Institution (HCI) Information** | | | | |
| Name of HCI | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.name | string | --- | --- |
| Accreditation Number | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.identifier | Identifier | --- | --- |
| Address of HCI (Bldg. No. and Name/Lot/Block/Street) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.line | string | --- | --- |
| Address of HCI (Subdivision/Village) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.line | string | --- | --- |
| Address of HCI (**Barangay**/City/Municipality) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.extension:barangay | Coding | --- | [Barangay](ValueSet-BarangayVS.html) |
| Address of HCI (Barangay/**City/Municipality**) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.extension:cityMunicipality | Coding | --- | [CityMunicipality](ValueSet-CityVS.html) |
| Address of HCI (Province) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.extension:province | Coding | --- | [Province](ValueSet-ProvinceVS.html) |
| Address of HCI (Zip Code) | Claim.provider | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.address.postalCode | Coding | --- |
| **Part II - Patient's Data** | | | | |
| Name of Patient (Last Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.family | string | --- | --- |
| Name of Patient (First Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**0**] | string | --- | --- |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**1**] | string | --- | --- |
| PhilHealth Identification Number (PIN) | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.identifier | Identifier | --- | --- |
| Age | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | --- | --- |
| <center>►</center> | Encounter.extension:ageYears | integer | --- | --- |
| Sex | Claim.patient | Reference([PH_Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.extension:sex | CodeableConcept | --- | --- |
| Chief Complaint | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | --- | --- |
| <center>►</center> | Encounter.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | --- | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| Admitting Diagnosis | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | --- | --- |
| <center>►</center> | Condition.code | CodeableConcept | --- | --- |
| Discharge Diagnosis | Claim.diagnosis.diagnosisReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | --- | --- |
| <center>►</center> | Condition.code | CodeableConcept | --- | --- |
| 1st Case Rate Code | Claim.item.productOrService | CodeableConcept | 1..1 | --- |
| 2nd Case Rate Code | Claim.item.productOrService | CodeableConcept | 1..1 | --- |
| Date Admitted (MM-DD-YYYY)(Time Admitted HH:MM)(AM/PM) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | --- | --- |
| <center>►</center> | Encounter.period.start | dateTime | --- | --- |
| Date Discharged (MM-DD-YYYY)(Time Discharged HH:MM)(AM/PM) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | --- | --- |
| <center>►</center> | Encounter.period.end | dateTime | --- | --- |
| **Part III - Reason for Admission** | | | | |
| 1. History of Present Illness | Claim.supportingInfo.valueReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 0..1 | --- |
| <center>►</center> | Condition.note | Annotation | --- | --- |
| 2. Pertinent Past Medical History | Claim.supportingInfo.valueReference | Reference([PH_Condition](StructureDefinition-PH-Condition.html)) | 0..1 | --- |
| <center>►</center> | Condition.note | Annotation | --- | --- |
| 2. OB/GYN History (G) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History (P) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History (P)**(T)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History (P)**(P)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History (P)**(A)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History (P)**(L)** | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueInteger | integer | --- | --- |
| 2. OB/GYN History **LMP** (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueDateTime | dateTime | --- | --- |
| 2. OB/GYN History (Checkbox **NA**) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueBoolean | boolean | --- | --- |
| 3. Pertinent Signs and Symptoms on Admission (tick applicable boxes) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 4. Referred from another health care institution (HCI) [Yes/No] | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | --- |
| <center>►</center> | ServiceRequest.status | code | --- | --- |
| 4. if Yes, Specify Reason | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | --- |
| <center>►</center> | ServiceRequest.reasonReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | --- | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 4. Name of Originating HCI | Claim.referral | Reference([PH_ServiceRequest](StructureDefinition-PH-ServiceRequest.html)) | 0..1 | --- |
| <center>►</center> | ServiceRequest.requester | Reference([PH_Organization](StructureDefinition-PH-Organization.html)) | --- | --- |
| <center>►</center> | Organization.name | string | --- | --- |
| 5. Height (cm) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. Weight (kg) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. General Survey | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. Vital Signs (BP) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. Vital Signs (HR) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. Vital Signs (RR) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. Vital Signs (Temp) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueString | string | --- | --- |
| 5. HEENT (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. CHEST/LUNGS (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. CVS (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. ABDOMEN (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. GU (IE) (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. SKIN/EXTREMITIES (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| 5. NEURO-EXAM (Check notes for options) | Claim.supportingInfo.valueReference | Reference([PH_Observation](StructureDefinition-PH-Observation.html)) | 0..1 | --- |
| <center>►</center> | Observation.valueCodeableConcept | CodeableConcept | --- | --- |
| **IV. COURSE IN THE WARD** | | | | |
| Date (MM-DD-YYYY) | Claim.supportingInfo.valueReference | Reference([PH_ClinicalImpression](StructureDefinition-PH-ClinicalImpression.html)) | 0..1 | --- |
| <center>►</center> | ClinicalImpression.effectiveDateTime | dateTime | --- | --- |
| DOCTOR'S ORDER/ACTION | Claim.supportingInfo.valueReference | Reference([PH_ClinicalImpression](StructureDefinition-PH-ClinicalImpression.html)) | 0..1 | --- |
| <center>►</center> | ClinicalImpression.description | string | --- | --- |
| SURGICAL PROCEDURE / RVS CODE (Attach photocopy of OR technique) | Claim.procedure.procedureCodeableConcept | 0..1 | --- |
| **V. DRUGS / MEDICINES** | | | | |
| Generic Name | Claim.item.productOrService | CodeableConcept | 1..1 | --- |
| Quantity | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | --- |
| <center>►</center> | MedicationRequest.dispenseRequest.quantity | SimpleQuantity | --- | --- |
| Dosage | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | --- |
| <center>►</center> | MedicationRequest.dosageInstruction | ~~Dosage~~ | --- | --- |
| Route | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | --- |
| <center>►</center> | MedicationRequest.dosageInstruction.route | CodeableConcept | --- | --- |
| Frequency | Claim.prescription | Reference([PH_MedicationRequest](StructureDefinition-PH-MedicationRequest.html)) | 0..1 | --- |
| <center>►</center> | MedicatioNRequest.dosageInstruction.doseAndRate.rateQuantity | SimpleQuantity | --- | --- |
| Total Cost | Claim.item.net | Money | 0..1 | --- |
| **Part VI - OUTCOME OF TREATMENT** | | | | |
| OUTCOME OF TREATMENT (Check notes for options) | Claim.extension:claimEncounter | Reference([PH_Encounter](StructureDefinition-PH-Encounter.html)) | --- | --- |
| <center>►</center> | Encounter.hospitalization.dischargeDisposition | CodeableConcept | --- | --- |
| **Part VII - CERTIFICATION OF HEALTH CARE PROFESSIONAL** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- |
| Signature over **Printed Name** of Attending Health Care Professional | Provenance.signature.who | Reference([PH_Practitioner](StructureDefinition-PH-Practitioner.html)) | --- | --- |
| <center>►</center> | Practitioner.name | HumanName | --- | --- |
| **Signature** over Printed Name of Attending Health Care Professional | Provenance.signature.data | base64Binary | 0..1 | --- |
| Date Signed | Provenance.signature.when | instant | 1..1 | --- |