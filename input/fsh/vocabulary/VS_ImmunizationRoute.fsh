ValueSet: ImmunizationRouteVS
Id: ImmunizationRouteVS
Title: "Immunization Route"
Description: "A value set representing routes of immunization administration."
* ^url = "https://nhdr.gov.ph/fhir/ValueSet/ImmunizationRouteVS"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2024-11-28"
* ^publisher = "NHDR"
* ^language = #en-US
* include $ImmunizationRouteCS#IDINJ "Injection, intradermal" 
* include $ImmunizationRouteCS#IM "Injection, intramuscular" 
* include $ImmunizationRouteCS#NASINHLC "Inhalation, nasal" 
* include $ImmunizationRouteCS#IVINJ "Injection, intravenous" 
* include $ImmunizationRouteCS#PO "Swallow, oral" 
* include $ImmunizationRouteCS#SQ "Injection, subcutaneous" 
* include $ImmunizationRouteCS#TRNSDERM "Transdermal" 