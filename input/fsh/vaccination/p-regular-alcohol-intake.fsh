// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: RegularAlcoholIntake
Parent: Observation
Id: regular-alcohol-intake
Title: "Regular Alcohol Intake"
Description: "Whether a patient regularly drinks alcohol"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $sctIntl2021#897148007 "Alcoholic beverage intake (observable entity)"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from RegularAlcoholIntake (required)

Instance: RegularAlcoholIntake
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient who does not drink alcohol"
* status = #final
* valueCodeableConcept = $sctIntl2021#373067005 "No (qualifier value)"
* subject = Reference(ExamplePatient)
