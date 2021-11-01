// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: AdditionalVaccinationWillingness
Parent: Observation
Id: additional-vaccination-willingness
Title: "Additional Vaccination Willingness"
Description: "Willingness of the patient to receive additional COVID-19 vaccination if officially recommended"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $nvm#q1001 "Willingness for additional SARS-CoV-2 vaccination if recommended"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from YesNoUnknown (required)

Instance: AdditionalVaccinationWillingness
InstanceOf: additional-vaccination-willingness
Usage: #example
Title: "Additional Vaccination Willingness"
Description: "Example of a willingness for additional vaccinations item"
* status = #final
* valueCodeableConcept = $sctIntl2021#373066001 "Yes (qualifier value)"
* subject = Reference(ExamplePatient)
