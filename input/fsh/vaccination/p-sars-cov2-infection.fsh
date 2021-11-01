// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SARSCoV2Infection
Parent: Observation
Id: sars-cov2-infection-vaccination
Title: "SARS CoV2 Infection"
Description: "Whether SARS CoV2 was detected in a patient"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#1240581000000104 "Severe acute respiratory syndrome coronavirus 2 detected (finding)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from DetectedNotDetectedUnknownUndetermined (required)
* effectiveDateTime 1..1 MS

Instance: SARSCoV2Infection
InstanceOf: sars-cov2-infection-vaccination
Usage: #example
Title: "SARS CoV2 Infection"
Description: "Example of a patient without detected SARS CoV2"
* status = #final
* valueCodeableConcept = $sctIntl2021#260415000 "Not detected (qualifier value)"
* effectiveDateTime = "2021-10-01T13:06:00+02:00"
* subject = Reference(ExamplePatient)
