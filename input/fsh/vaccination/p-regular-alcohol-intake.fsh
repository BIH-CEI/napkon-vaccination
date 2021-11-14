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
* value[x] only Range or Quantity or CodeableConcept
* valueQuantity MS
  * insert quantity-ucum(#/wk, "PerWeek")
* valueRange MS
  * low
    * insert quantity-ucum(#/wk, "PerWeek")
  * high
    * insert quantity-ucum(#/wk, "PerWeek")
* valueCodeableConcept 0..1 MS
* valueCodeableConcept = $nvm#no-longer "No longer"
* obeys value-or-data-absent-reason

Instance: RegularAlcoholIntake1
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient who drinks a single drink per week"
* status = #final
* valueQuantity = 1 #/wk
* subject = Reference(ExamplePatient)

Instance: RegularAlcoholIntake4
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient who drinks at least 4 drinks per week"
* status = #final
* valueRange
  * low = 4 #/wk
* subject = Reference(ExamplePatient)

Instance: RegularAlcoholIntakeNoLonger
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient who does no longer drink alcohol"
* status = #final
* valueCodeableConcept = $nvm#no-longer "No longer"
* subject = Reference(ExamplePatient)

Instance: RegularAlcoholIntakeNo
InstanceOf: regular-alcohol-intake
Usage: #example
Title: "Regular Alcohol Intake"
Description: "Example of a patient for whom the alcohol intake is unknown"
* status = #final
* dataAbsentReason = $cs-data-absent-reason#unknown
* subject = Reference(ExamplePatient)
