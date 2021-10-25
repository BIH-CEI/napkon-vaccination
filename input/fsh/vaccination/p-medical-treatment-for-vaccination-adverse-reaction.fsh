// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: MedicalTreatmentForVaccinationAdverseReaction
Parent: Observation
Id: medical-treatment-for-vaccination-adverse-reaction
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Whether a patient underwent medical treatment for a potential or actual adverse reaction to a vaccination event"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* obeys reason-if-treated
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $nvm#q1004 "Medical treatment for actual or potential adverse events"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MedicalTreatmentForVaccinationAdverseReaction (required)
* derivedFrom only Reference(MedicalTreatmentReason)

Instance: MedicalTreatmentForVaccinationAdverseReactionInHospital
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient hospitalized for a potential or actual adverse reaction to a vaccination event"
* status = #final
* valueCodeableConcept = $nvm#6002 "Ja, Behandlung mit Aufnahme im Krankenhaus"
* derivedFrom = Reference(MedicalTreatmentReason)

Instance: MedicalTreatmentForVaccinationAdverseReactionAtGP
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient treated in the mergency room or by a general practitioner for a potential or actual adverse reaction to a vaccination event"
* status = #final
* valueCodeableConcept = $nvm#6001 "Ja, Behandlung in Arztpraxis oder Rettungsstelle"
* derivedFrom = Reference(MedicalTreatmentReason)

Instance: MedicalTreatmentForVaccinationAdverseReaction
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient not treated for a potential or actual adverse reaction to a vaccination event"
* status = #final
* valueCodeableConcept = $sctIntl2021#373067005 "No (qualifier value)"
