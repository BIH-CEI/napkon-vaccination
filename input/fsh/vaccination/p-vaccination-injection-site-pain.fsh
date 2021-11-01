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
    sct 1..*
* code.coding[sct] = $sctIntl2021#95388000 "Injection site pain (disorder)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* component 1..2 MS
* component
  * code from PainProvokingFactor (required)
  * value[x] MS
  * value[x] only CodeableConcept
  * valueCodeableConcept from VaccinationPainScale (required)

ValueSet: PainProvokingFactor
Id: pain-provoking-factor
Title: "Pain Provoking Factor"
Description: ""
* $sctIntl2021#426120002 "Pain provoked by rest (finding)"
* $sctIntl2021#425423002 "Pain provoked by movement (finding)"

Instance: VaccinationInjectionSitePainRest
InstanceOf: vaccination-injection-site-pain-rest
Usage: #example
Title: "Vaccination Injection Site Pain Rest"
Description: "Example of mild pain at vaccine injection site at rest"
* status = #final
* component[+]
  * code = $sctIntl2021#426120002 "Pain provoked by rest (finding)"
  * valueCodeableConcept = $nvm#3001 "Leichte Schmerzen, diese stören nicht bei täglichen Aktivitäten"
* component[+]
  * code = $sctIntl2021#425423002 "Pain provoked by movement (finding)"
  * valueCodeableConcept = $nvm#3001 "Leichte Schmerzen, diese stören nicht bei täglichen Aktivitäten"
* subject = Reference(ExamplePatient)
