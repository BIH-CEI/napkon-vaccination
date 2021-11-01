// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: RegularAlcoholIntakeQuantity
Parent: Observation
Id: regular-alcohol-intake-quantity
Title: "Regular Alcohol Intake Quantity"
Description: "How many alcoholic drinks a patient usually drings per day"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#289153004	"Finding of quantity of drinking (finding)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from RegularAlcoholIntakeQuantity (required)

Instance: RegularAlcoholIntakeQuantity
InstanceOf: regular-alcohol-intake-quantity
Usage: #example
Title: "Regular Alcohol Intake Quantity"
Description: "Example of intake of 5 or more alcoholic beverages per day"
* status = #final
* valueCodeableConcept = $nvm#9005 "5 oder mehr alkoholische Getränke pro Tag"
* subject = Reference(ExamplePatient)
