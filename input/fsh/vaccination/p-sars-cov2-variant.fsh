// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SARSCoV2Variant
Parent: Observation
Id: sars-cov2-variant
Title: "SARS CoV2 Variant"
Description: "Variant/strain of detected SARS CoV2 (Pango Cov-lineage)"
* insert napkon-metadata(2021-12-06, #active, 1.1.0)
* insert mii-patient-reference
* status MS
* category 1.. MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains loinc-observation 1..1 and observation-category 1..1
  * coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
  * coding[observation-category] = $cs-observation-category#laboratory "Laboratory"
* code = $loinc#96741-4 "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by Sequencing"
* value[x] only CodeableConcept or string
* valueString MS
* valueCodeableConcept MS
* valueCodeableConcept from $loinc-sars-cov2-variants (extensible)
* effective[x] 1.. MS
* effective[x] only dateTime
* effectiveDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* dataAbsentReason MS
* note MS
* method MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* device MS
* referenceRange MS

Instance: SARSCoV2Variant
InstanceOf: sars-cov2-variant
Usage: #example
Title: "SARS CoV2 Variant"
Description: "Example of a SARS CoV2 variant (Pango lineage)"
* status = #final
* valueCodeableConcept = $loinc#LA32552-4 "SARS-CoV-2 Delta variant (WHO)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-01-01T00:00:00+00:00" // required for sushi 2.1.1 (error is raised otherwise), but not for actual profile ..
* effectiveDateTime.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown

Instance: SARSCoV2VariantFreetext
InstanceOf: sars-cov2-variant
Usage: #example
Title: "SARS CoV2 Variant free text"
Description: "Example of a SARS CoV2 variant (Pango lineage; free text)"
* status = #final
* valueString = "B.1.1.529"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-01-01T00:00:00+00:00" // required for sushi 2.1.1 (error is raised otherwise), but not for actual profile ..
* effectiveDateTime.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
