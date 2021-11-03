// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: VaccinationInjectionSitePain
Parent: Observation
Id: vaccination-injection-site-pain
Title: "Vaccination Injection Site Pain"
Description: "Pain intensity at vaccine injection site at rest or movement"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
      sct 1..*
  * coding[sct] = $sctIntl2021#95388000 "Injection site pain (disorder)"
  * coding[sct].system 1..
  * coding[sct].code 1..
* component 1..* MS
* component
  * code from PainProvokingFactor (required)
  * value[x] MS
  * value[x] only CodeableConcept
  * valueCodeableConcept
    * coding ^slicing.discriminator.type = #pattern
    * coding ^slicing.discriminator.path = "$this"
    * coding ^slicing.rules = #open
    * coding contains
        sct 1..* and ctcae 0..1
    * coding[sct] from SeverityGrading
    * coding[sct].system 1..
    * coding[sct].code 1..
    * coding[ctcae] from $vs-ctc-adverse-event-grade
    * coding[ctcae].system 1..
    * coding[ctcae].code 1..

Instance: VaccinationInjectionSitePain
InstanceOf: vaccination-injection-site-pain
Usage: #example
Title: "Vaccination Injection Site Pain Rest"
Description: "Example of mild pain at vaccine injection site at rest and movement"
* status = #final
* component[+]
  * code = $sctIntl2021#426120002 "Pain provoked by rest (finding)"
  * valueCodeableConcept.coding[sct] = $sctIntl2021#6736007	"Moderate (severity modifier) (qualifier value)"
  * valueCodeableConcept.coding[ctcae] = $cs-ctc-adverse-event-grade#2 "Moderate Adverse Event"
* component[+]
  * code = $sctIntl2021#425423002 "Pain provoked by movement (finding)"
  * valueCodeableConcept.coding[sct] = $sctIntl2021#6736007	"Moderate (severity modifier) (qualifier value)"
* subject = Reference(ExamplePatient)
