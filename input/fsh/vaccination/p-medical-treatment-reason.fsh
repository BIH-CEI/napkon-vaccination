// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: MedicalTreatmentReason
Parent: Observation
Id: medical-treatment-reason
Title: "Medical Treatment Reason"
Description: "Reason for a medical treatment for a potential or actual adverse reaction to a vaccination event (free text only)"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#408773008 "Reasons for treatment (finding)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only string

Instance: MedicalTreatmentReason
InstanceOf: medical-treatment-reason
Usage: #example
Title: "Medical Treatment Reason"
Description: "Example of a skin rash as a reason for a medical treatment for a potential or actual adverse reaction to a vaccination event"
* status = #final
* valueString = "Starker Hautausschlag"
* subject = Reference(ExamplePatient)
