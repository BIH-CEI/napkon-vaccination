// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: Covid19OxygenTherapy
Parent: $mii-procedure
Id: covid19-oxygen-therapy
Title: "Covid19 Oxygen Therapy"
Description: ""
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* code.coding[sct] 1..1
* code.coding[sct] = $sctIntl2021#57485005 "Oxygen therapy (procedure)"
* encounter 0..1 MS
* encounter only Reference(Covid19Encounter)
* reasonReference 1..* MS
* reasonReference only Reference(SARSCoV2Infection)
* performedDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS

Instance: Covid19OxygenTherapy
InstanceOf: covid19-oxygen-therapy
Usage: #example
Title: "Covid19 Oxygen Therapy"
Description: ""
* status = #completed
* reasonReference = Reference(SARSCoV2Infection)
* encounter = Reference(Covid19EncounterInpatient)
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-03"
