// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: VaccinationInjectionSiteErythema
Parent: Observation
Id: vaccination-injection-site-erythema
Title: "Vaccination Injection Site Erythema"
Description: "Size of an erythema at a vaccine injection site"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#213338000	"Erythema at injection site (disorder)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from VaccinationInjectionSiteErythemaSize (required)

Instance: VaccinationInjectionSiteErythema
InstanceOf: vaccination-injection-site-erythema
Usage: #example
Title: "Vaccination Injection Site Erythema"
Description: "Example of a 2.5-5 cm erythema at a vaccine injection site"
* status = #final
* valueCodeableConcept = $nvm#4002 "Zwischen 2,5 und 5 Zentimeter"
* subject = Reference(ExamplePatient)
