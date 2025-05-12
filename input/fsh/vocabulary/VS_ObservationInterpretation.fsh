ValueSet: ObservationInterpretationVS
Id: ObservationInterpretationVS
Title: "Observation Interpretation"
Description: "A valueset used to indicate the clinical meaning or significance of an observation result."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ObservationInterpretationVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include codes from system $ObservationInterpretationCS
* exclude $ObservationInterpretationCS#Carrier
* exclude $ObservationInterpretationCS#AC
* exclude $ObservationInterpretationCS#QCF
* exclude $ObservationInterpretationCS#TOX
* exclude $ObservationInterpretationCS#H>
* exclude $ObservationInterpretationCS#L<
* exclude $ObservationInterpretationCS#MS
* exclude $ObservationInterpretationCS#VS
* exclude $ObservationInterpretationCS#HM
* exclude $ObservationInterpretationCS#OBX

