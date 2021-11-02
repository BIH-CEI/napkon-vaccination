// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: AllergicReactionToVaccination
Parent: Observation
Id: allergic-reaction-to-vaccination
Title: "Allergic Reaction To Vaccination"
Description: "Whether a vaccination caused an allergic reaction"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#15920121000119103 "Allergic reaction caused by vaccine product (disorder)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from PresentNotPresentUndeterminedOther (required)
* valueCodeableConcept obeys codeable-concept-text-present-if-code-other

Instance: AllergicReactionToVaccinationInstance
InstanceOf: allergic-reaction-to-vaccination
Usage: #example
Title: "Allergic Reaction To Vaccination Instance"
Description: "Example of an undetermined state of an allergic reaction cause by a vaccine"
* status = #final
* valueCodeableConcept = $sctIntl2021#373068000 "Undetermined (qualifier value)"
* subject = Reference(ExamplePatient)

Instance: AllergicReactionToVaccinationInstanceOther
InstanceOf: allergic-reaction-to-vaccination
Usage: #example
Title: "Allergic Reaction To Vaccination Instance"
Description: "Example of a free-text answer to an allergic reaction caused by vaccination"
* status = #final
* valueCodeableConcept = $sctIntl2021#74964007	"Other (qualifier value)"
* valueCodeableConcept.text = "some other reason"
* subject = Reference(ExamplePatient)
