// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: GeneralComplaintsAfterVaccination
Parent: $gecco-base-condition
Id: general-complaints-after-vaccination
Title: "General Complaints After Vaccination"
Description: "General complaints after a vaccination event"
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    observation-category 1..1
    and loinc 1..1
* category.coding[observation-category] = $cs-condition-category#problem-list-item
* category.coding[loinc] = $loinc#31044-1 "Immunization Reaction"
* code.coding[sct] from GeneralComplaintsAfterVaccination (required)
* severity 1..1 MS
* severity from ComplaintIntensity (required)
* extension contains $ext-condition-occurredFollowing named occurredFollowing 1..* MS
* extension[occurredFollowing].value[x] only Reference
* extension[occurredFollowing].valueReference only Reference(CovidVaccination)

Instance: GeneralComplaintsAfterVaccination
InstanceOf: general-complaints-after-vaccination
Usage: #example
Title: "General Complaints After Vaccination"
Description: "Example of a chill after a vaccination event"
* extension[occurredFollowing].valueReference = Reference(CovidVaccinationDone)
* code.coding[sct] = $sctIntl2021#57676002 "Joint pain (finding)"
* severity = $sctIntl2021#24484000 "Severe (severity modifier) (qualifier value)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021-02-19T09:30:35+01:00"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
