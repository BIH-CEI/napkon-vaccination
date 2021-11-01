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
    loinc 1..*
* code.coding[loinc] = $loinc#81032-5 "Days per week alcoholic drinks consumed"
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* value[x] MS
* value[x] only Quantity or Range
* valueQuantity MS
  * insert quantity-per-week
* valueRange
  * low
    * insert quantity-per-week
  * high
    * insert quantity-per-week

Instance: RegularAlcoholIntake
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient who drinks a single drink per week"
* status = #final
* valueQuantity = 1 #/wk
* subject = Reference(ExamplePatient)
