// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: COVID19OxygenTherapy
Parent: $mii-procedure
Id: covid19-oxygen-therapy
Title: "COVID-19 Oxygen Therapy"
Description: "Indicating whether a COVID-19 patient received an oxygen therapy"
* insert napkon-metadata(2021-10-05, #active, 1.0.0)
* code.coding[sct] 1..1
* code.coding[sct] = $sctIntl2021#57485005 "Oxygen therapy (procedure)"
* encounter 0..1 MS
* encounter only Reference(COVID19Encounter)
* reasonReference 1..* MS
* reasonReference only Reference(SARSCoV2Infection)
* performedDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS

Instance: COVID19OxygenTherapy
InstanceOf: covid19-oxygen-therapy
Usage: #example
Title: "COVID-19 Oxygen Therapy"
Description: "Example of a COVID-19 patient who received an oxygen therapy"
* status = #completed
* reasonReference = Reference(SARSCoV2Infection)
* encounter = Reference(COVID19EncounterInpatient)
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-03"
