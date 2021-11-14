// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: AnalgesicAntipyreticIntakeAfterVaccination
Parent: $mii-medication-statement
Id: analgesic-antipyretic-intake-after-vaccination
Title: "Analgesic Antipyretic Intake After Vaccination"
Description: "Whether a patient took analgesic or antipyretic drugs after a vaccination event"
* insert mii-patient-reference
* medication[x] only CodeableConcept
* medicationCodeableConcept from AnalgesicsAntipyretics
* reasonCode = $sctIntl2021#33879002 "Administration of vaccine to produce active immunity (procedure)"
* effectiveDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS

Instance: AnalgesicAntipyreticIntakeAfterVaccination
InstanceOf: analgesic-antipyretic-intake-after-vaccination
Usage: #example
Title: "Analgesic Antipyretic Intake After Vaccination"
Description: "Example of an antipyretic drug taken after a vaccination event"
* status = #completed
* medicationCodeableConcept = $atcde#N02BA06 "Salsalat"
* subject = Reference(ExamplePatient)
* effectiveDateTime.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
* effectiveDateTime = "2021-01-01T00:00:00+00:00" // required for sushi 2.1.1 (error is raised otherwise), but not for actual profile ..
