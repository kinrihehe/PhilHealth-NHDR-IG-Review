<html>
    <style>
        table, thead, td{
            border:2px solid #ccc; 
            border-collapse:collapse; 
            vertical-align: middle;
        }
        table {
            table-layout: fixed;
            width: 100%;
        }
        table th:nth-child(4) { width: 10%; }
        table th:nth-child(5) { width: 10%; }
    </style>
    <ul class="nav nav-tabs">
        <li><a href="CF1.html">Content</a></li>
        <li class="active"><a href="#">Mappings</a></li>
        <li><a href="CF1-1.html">Sample JSON Bundles</a></li>
        <!-- <li><a href="CF1-2-json.html">JSON 2</a></li> -->
    </ul>
</html>

| <center>Form Field</center> | <center>Use-Case Mapping<br>/ Target Element</center> | <center>Data Type</center> | <center>Cardinality</center> | <center>ValueSet <br><i>(if any)</i></center> |
|:---------|:---------|:--------|:--------:|:----------:|
| Series #| Claim.identifier | Identifier | 0..* | --- |
| **Part I - Member Information** | | | | |
| PhilHealth Identification Number (PIN) of Member | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.identifier | Identifier | | --- |
| Name of Member (Last Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.name.family | string | | --- |
| Name of Member (First Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.name.given[**0**] | string | 0..1 | --- |
| Name of Member (Name Extension) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..* | --- |
| <center>►</center> | RelatedPerson.name.suffix | string | 0..* | --- |
| Name of Member (Middle Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.name.given[**1**] | string | 0..1 | --- |
| Date of Birth | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.birthDate | date | 0..1 | --- |
| Mailing Address (Unit/Room No./Floor) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.line | string | 0..1 | --- |
| Mailing Address (Building Name) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.line | string | 0..1 | --- |
| Mailing Address (Lot/Blk/House/Bldg. No.) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> |  RelatedPerson.address.line | string | 0..1 | --- |
| Mailing Address (Street) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.line | string | 0..1 | --- |
| Mailing Address (Subdivision/Village) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.line | string | 0..1 | --- |
| Mailing Address (Barangay) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.extension:barangay | Coding | 0..1 | [Barangay](ValueSet-BarangayVS.html) |
| Mailing Address (City/Municipality) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.extension:cityMunicipality | Coding | 0..1 | [CityMunicipality](ValueSet-CityVS.html) |
| Mailing Address (Province) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.extension:province | Coding | 0..1 | [Province](ValueSet-ProvinceVS.html) |
| Mailing Address (Country) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.country | Coding | 0..1 | ~~[Country](ValueSet-CountryVS.html)~~ |
| Mailing Address (Zip Code) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.address.postalCode | Coding | 0..1 | ~~[PostalCodes](ValueSet-PostalCodesVS.html)~~ |
| Sex | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.extension:sex | CodeableConcept | 0..1 | [Sex](ValueSet-SexVS.html) |
| Contact Information Landline # (Area Code + Tel. No.) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> |  RelatedPerson.telecom.value | string | 0..1 | --- |
| Contact Information (Mobile #) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.telecom.value | string | 0..1 | --- |
| Contact Information (Email Address) | Claim.payee.party | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 0..1 | --- |
| <center>►</center> | RelatedPerson.telecom.value | string | 0..1 | --- |
| Patient is the member?<br>[Yes, Proceed to Part III / No, Proceed to Part II] | Questionnaire.item.text | string | 0..1 | --- |
| **Part II - Patient Information** | *(To be filled-out only if the patient is a dependent)* | | | |
| PhilHealth Identification Number (PIN) of Dependent | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.identifier | Identifier | --- | --- |
| Name of Patient (Last Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.family | string | 0..1 | --- |
| Name of Patient (First Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**0**] | string | 0..* | --- |
| Name of Patient (Name Extension) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> |  Patient.name.suffix | string | 0..* | --- |
| Name of Patient (Middle Name) | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.name.given[**1**] | string | 0..* | --- |
| Date of Birth | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.birthDate | date | 0..1 | --- |
| Relationship to Member | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.contact.relationship | CodeableConcept | 0..1 | [Contact Relationship](ValueSet-ContactRelationshipVS.html) |
| Sex | Claim.patient | Reference([PH Patient](StructureDefinition-PH-Patient.html)) | 1..1 | --- |
| <center>►</center> | Patient.extension:sex | CodeableConcept | 0..1 | [Sex](ValueSet-SexVS.html) |
| **Part III - Member Certification** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- |
| **Signature** Over Printed Name of Member | Provenance.signature.data | base64Binary | 0..1 | --- |
| Signature Over **Printed Name** of Member | Provenance.signature.who | Reference([PH Patient](StructureDefinition-PH-Patient.html) or [PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | --- |
| <center>►</center> | Patient.name <br> RelatedPerson.name | HumanName | 0..1 | --- |
| Date Signed (MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | --- |
| **Signature** Over Printed Name of Member's Representative | Provenance.signature.data | base64Binary | 0..1 | --- |
| Signature Over **Printed Name** of Member's Representative | Provenance.signature.who | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | --- |
| <center>►</center> | RelatedPerson.name | HumanName | --- | --- |
| Date Signed (MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | --- |
| Printed Thumbmark | Provenance.signature.data | base64Binary |  0..1 | --- |
| Relationship of the representative to the member | Provenance.signature.who | Reference([PH RelatedPerson](StructureDefinition-PH-RelatedPerson.html)) | 1..1 | --- |
| <center>►</center> | RelatedPerson.relationship | CodeableConcept | 0..1 | [Contact Relationship](ValueSet-ContactRelationshipVS.html) |
| Reason for signing on behalf of the member | Provenance.signature.extension:signatureReason | string | 0..1 | --- |
| **Part IV - Employer's Certification** | *(for employed members only)* | | | |
| PhilHealth Employer Number (PEN) | Claim.payee.party | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 0..1 | --- |
| <center>►</center> | Organization.identifier | Identifier | 0..1 | --- |
| Contact No. | Claim.payee.party | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 0..1 | --- |
| <center>►</center> | Organization.telecom.value | string | 0..1 | --- |
| Business Name (Business Name of Employer) | Claim.payee.party | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 0..1 | --- |
| <center>►</center> | Organization.name | string | 0..1 | --- |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- |
| **Signature** Over Printed Name of Employer/Authorized Representative | Provenance.signature.data | base64Binary | 0..1 | --- |
| Signature Over **Printed Name** of Employer/Authorized Representative | Provenance.signature.who | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> | Organization.contact.name | HumanName | 0..1 | --- |
| Official Capacity / Designation | Provenance.signature.extension:position | CodeableConcept | 0..* | --- |
| CERTIFICATION OF EMPLOYER (Date Signed MM-DD-YYYY) | Provenance.signature.when | instant | 1..1 | --- |
| **Part V - For PhilHealth Use Only** | | | | |
| Signature Type | Provenance.signature.type | Coding | 1..* | --- |
| Date Received | Provenance.recorded | instant | 1..1 | --- |
| LHIO / PRO **Signature** Over Printed Name | Provenance.signature.data | base64Binary | 0..1 | --- |
| LHIO / PRO Signature Over **Printed Name** | Provenance.signature.who | Reference([PH Organization](StructureDefinition-PH-Organization.html)) | 1..1 | --- |
| <center>►</center> |  Organization.contact.name | HumanName | 0..1 | --- |