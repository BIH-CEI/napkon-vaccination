// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SARSCoV2Variant
Parent: $mii-observation-lab
Id: sars-cov2-variant
Title: "SARS CoV2 Variant"
Description: "Variant/strain of detected SARS CoV2 (Pango Cov-lineage)"
* insert napkon-metadata(2021-10-05, #active, 1.0.0)
* category 1.. MS
  * coding[loinc-observation] = $loinc#26436-6
  * coding[observation-category] = $cs-observation-category#laboratory
* code = $loinc#96741-4 "SARS-CoV-2 (COVID-19) variant [Type] in Specimen by Sequencing"
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from $loinc-sars-cov2-variants (required)
* identifier[analyseBefundCode].system.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* identifier[analyseBefundCode].value.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* identifier[analyseBefundCode].assigner.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* effectiveDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS

Instance: SARSCoV2Variant
InstanceOf: sars-cov2-variant
Usage: #example
Title: "SARS CoV2 Variant"
Description: "Example of a SARS CoV2 variant (Pango lineage)"
* identifier[analyseBefundCode].system.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#not-applicable
* identifier[analyseBefundCode].value.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#not-applicable
* identifier[analyseBefundCode].assigner.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#not-applicable
* identifier[analyseBefundCode].assigner.display = "not-applicable"
* status = #final
* valueCodeableConcept = $loinc#LA32552-4 "SARS-CoV-2 Delta variant (WHO)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-01-01T00:00:00+00:00" // required for sushi 2.1.1 (error is raised otherwise), but not for actual profile ..
* effectiveDateTime.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
