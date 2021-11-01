// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: AnalgesicAntipyreticIntakeAfterVaccination
Parent: MedicationStatement // don't use MII profile, as that one requires effective field, which might not be known in this context
Id: analgesic-antipyretic-intake-after-vaccination
Title: "Analgesic Antipyretic Intake After Vaccination"
Description: "Whether a patient took analgesic or antipyretic drugs after a vaccination event"
* insert mii-patient-reference
* medication[x] only CodeableConcept
* medicationCodeableConcept from AnalgesicsAntipyretics
* reasonCode = $sctIntl2021#33879002 "Administration of vaccine to produce active immunity (procedure)"

Instance: AnalgesicAntipyreticIntakeAfterVaccination
InstanceOf: analgesic-antipyretic-intake-after-vaccination
Usage: #example
Title: "Analgesic Antipyretic Intake After Vaccination"
Description: "Example of an antipyretic drug taken after a vaccination event"
* status = #completed
* medicationCodeableConcept = $atcde#N02BA06 "Salsalat"
* subject = Reference(ExamplePatient)
