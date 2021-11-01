// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: VaccinationInjectionSiteSwelling
Parent: Observation
Id: vaccination-injection-site-swelling
Title: "Vaccination Injection Site Swelling"
Description: "Size of an swelling at a vaccine injection site"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#863910007 "Vaccination site swelling (disorder)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* bodySite = $sctIntl2021#13136005 "Injection site (morphologic abnormality)"
* insert value-quantity-or-range(#cm, "CentiMeter")

Instance: VaccinationInjectionSiteSwelling
InstanceOf: vaccination-injection-site-swelling
Usage: #example
Title: "Vaccination Injection Site Swelling Instance"
Description: "Example of a 5.1-10 cm swelling at a vaccine injection site"
* status = #final
* valueRange
  * low = 5.1 'cm'
  * high = 10 'cm'
* subject = Reference(ExamplePatient)
