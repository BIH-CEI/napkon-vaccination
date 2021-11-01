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
    loinc 1..*
* code.coding[loinc] = $loinc#74013-4 "Alcoholic drinks per day"
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* insert value-quantity-or-range(#/d, "PerDay")

Instance: RegularAlcoholIntakeQuantity
InstanceOf: regular-alcohol-intake-quantity
Usage: #example
Title: "Regular Alcohol Intake Quantity"
Description: "Example of intake of 5 or more alcoholic beverages per day"
* status = #final
* valueRange.low = 5 #/d
* subject = Reference(ExamplePatient)
