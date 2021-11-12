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
* code.coding[sct] = $sctIntl2021#213338000 "Injection site erythema (disorder)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* bodySite = $sctIntl2021#13136005 "Injection site (morphologic abnormality)"
* insert value-quantity-or-range(#cm, "CentiMeter")

Instance: VaccinationInjectionSiteErythema
InstanceOf: vaccination-injection-site-erythema
Usage: #example
Title: "Vaccination Injection Site Erythema"
Description: "Example of a 2.5-5 cm erythema at a vaccine injection site"
* status = #final
* valueRange
  * low = 2.5 'cm'
  * high = 5.0 'cm'
* subject = Reference(ExamplePatient)
