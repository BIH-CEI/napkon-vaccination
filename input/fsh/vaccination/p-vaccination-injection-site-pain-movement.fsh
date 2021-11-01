// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: VaccinationInjectionSitePainMovement
Parent: Observation
Id: vaccination-injection-site-pain-movement
Title: "Vaccination Injection Site Pain Movement"
Description: "Pain intensity at vaccine injection site during pressure or movement"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $nvm#q1008 "Injection site pain with pressure or movement"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from VaccinationPainScale (required)

Instance: VaccinationInjectionSitePainMovement
InstanceOf: vaccination-injection-site-pain-movement
Usage: #example
Title: "Vaccination Injection Site Pain Movement Instance"
Description: "Example of mild pain at vaccine injection site during pressure or movement"
* status = #final
* valueCodeableConcept = $nvm#3001 "Leichte Schmerzen, diese stören nicht bei täglichen Aktivitäten"
* subject = Reference(ExamplePatient)
