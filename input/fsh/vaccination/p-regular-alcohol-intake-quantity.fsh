// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: RegularAlcoholIntakeQuantity
Parent: Observation
Id: regular-alcohol-intake-quantity
Title: "Regular Alcohol Intake Quantity"
Description: "How many alcoholic drinks a patient usually drinks per day"
* insert napkon-metadata(2021-10-05, #active, 1.0.0)
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
* obeys value-or-data-absent-reason

Instance: RegularAlcoholIntakeQuantityNone
InstanceOf: regular-alcohol-intake-quantity
Usage: #example
Title: "Regular Alcohol Intake Quantity"
Description: "Example of a patient for whom the quantity is unknown"
* status = #final
* subject = Reference(ExamplePatient)
* dataAbsentReason = $cs-data-absent-reason#unknown

Instance: RegularAlcoholIntakeQuantity
InstanceOf: regular-alcohol-intake-quantity
Usage: #example
Title: "Regular Alcohol Intake Quantity"
Description: "Example of intake of 5 or more alcoholic beverages per day"
* status = #final
* valueRange.low = 5 #/d
* subject = Reference(ExamplePatient)
