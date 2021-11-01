// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: VaccinationInjectionSitePainRest
Parent: Observation
Id: vaccination-injection-site-pain-rest
Title: "Vaccination Injection Site Pain Rest"
Description: "Pain intensity at vaccine injection site at rest"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $nvm#q1007 "Injection site pain at rest"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from VaccinationPainScale (required)

Instance: VaccinationInjectionSitePainRest
InstanceOf: vaccination-injection-site-pain-rest
Usage: #example
Title: "Vaccination Injection Site Pain Rest"
Description: "Example of mild pain at vaccine injection site at rest"
* status = #final
* valueCodeableConcept = $nvm#3001 "Leichte Schmerzen, diese stören nicht bei täglichen Aktivitäten"
* subject = Reference(ExamplePatient)
