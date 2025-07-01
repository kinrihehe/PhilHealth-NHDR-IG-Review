Profile: PH_ClaimResponse
Parent: ClaimResponse
Id: PH-ClaimResponse
Title: "PH ClaimResponse"
Description: "This resource provides the adjudication details from the processing of a Claim resource."
* ^url = "https://nhdr.gov.ph/fhir/StructureDefinition/PH-ClaimResponse"
* insert MetaData
// * id ..0
// * meta ..0
* implicitRules ..0
* language ..0
* text ..0
* contained ..0
* extension ..0
* modifierExtension ..0
* identifier ..0
// * status ..0                     //  Can't disable elements that are mandatory by default
// * type ..0                       //  Can't disable elements that are mandatory by default
* subType ..0
// * use ..0                        //  Can't disable elements that are mandatory by default
// * patient ..0                    //  Can't disable elements that are mandatory by default
// * created ..0                    //  Can't disable elements that are mandatory by default
// * insurer ..0                    //  Can't disable elements that are mandatory by default
* requestor ..0
* request ..0
// * outcome ..0                    //  Can't disable elements that are mandatory by default
* disposition ..0
* preAuthRef ..0
* preAuthPeriod ..0
* payeeType ..0
// * item ..0
* item.extension ..0
* item.modifierExtension ..0
// * item.itemSequence ..0          //  Can't disable elements that are mandatory by default
* item.noteNumber ..0
// * item.adjudication ..0
* item.adjudication.extension ..0
* item.adjudication.modifierExtension ..0
// * item.adjudication.category ..0
* item.adjudication.reason ..0
// * item.adjudication.amount ..0
* item.adjudication.value ..0
* item.detail ..0
* addItem ..0
* adjudication ..0
// * total ..0
* total.extension ..0
* total.modifierExtension ..0
// * total.category ..0             //  Can't disable elements that are mandatory by default
// * total.amount ..0
// * payment ..0
* payment.extension ..0
* payment.modifierExtension ..0
// * payment.type ..0               //  Can't disable elements that are mandatory by default
* payment.adjustment ..0
* payment.adjustmentReason ..0
* payment.date ..0
// * payment.amount ..0
* payment.identifier ..0
* fundsReserve ..0
* formCode ..0
* form ..0
* processNote ..0
* communicationRequest ..0
* insurance ..0
* error ..0