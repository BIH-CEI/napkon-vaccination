// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
// Parent verwendet nicht MII ProfileObservationLaboruntersuchung, da ein identifier angegeben werden muss
//  - der Laborbefund hier kann u.U. nicht identifziert;
//  außerdem da dort (fehlerhaft?) zwei mal identifier[analyseBefundCode].coding gesetzt wird (auf #OBI)
Profile: SARSCoV2Variant
Parent: Observation
Id: sars-cov2-variant
Title: "SARS CoV2 Variant"
Description: "Variant/strain of detected SARS CoV2 (Pango Cov-lineage)"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference

* code = $loinc#96741-4 "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by Sequencing"
* value[x] only CodeableConcept
* valueCodeableConcept from $loinc-sars-cov2-variants (required)

* status MS
* category 1.. MS
  * coding MS
    * ^slicing.discriminator.type = #pattern
    * ^slicing.discriminator.path = "$this"
    * ^slicing.rules = #open
  * coding contains
      loinc-observation 1..1 MS and
      observation-category 1..1 MS
  * coding[loinc-observation] = $loinc#26436-6
  * coding[observation-category] = $cs-observation-category#laboratory
* code MS
* code = $loinc#96741-4 "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by Sequencing"
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from $loinc-sars-cov2-variants (required)
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite ..0
* method MS
* specimen MS
  * reference MS
  * identifier MS
* device MS

Instance: SARSCoV2Variant
InstanceOf: sars-cov2-variant
Usage: #example
Title: "SARS CoV2 Variant"
Description: "Example of a SARS CoV2 variant (Pango lineage)"
* status = #final
* valueCodeableConcept = $loinc#LA32552-4 "SARS-CoV-2 Delta variant (WHO)"
* subject = Reference(ExamplePatient)
