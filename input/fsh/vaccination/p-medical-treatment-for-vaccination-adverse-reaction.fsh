// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: MedicalTreatmentForVaccinationAdverseReaction
Parent: $mii-encounter
Id: medical-treatment-for-vaccination-adverse-reaction
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Whether a patient underwent medical treatment for a potential or actual adverse reaction to a vaccination event"
* period.start.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* class from EncounterAmbulatoryEmergencyInpatient (extensible)
* reasonReference MS
* reasonReference only Reference(GeneralComplaintsAfterVaccination)
* obeys reason-code-or-reference-set

Invariant: reason-code-or-reference-set
Description: "Either reasonReference or reasonCode.text must be set"
Expression: "reasonReference.exists() or reasonCode.text.exists()"
Severity: #error


ValueSet: EncounterAmbulatoryEmergencyInpatient
Id: encounter-ambulatory-emergency-inpatient
Title: "Encounter Ambulatory Emergency Inpatient"
Description: ""
* $cs-act-code#AMB "ambulatory"
* $cs-act-code#EMER "emergency"
* $cs-act-code#IMP "inpatient encounter"



Instance: MedicalTreatmentForVaccinationAdverseReactionInHospital
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient hospitalized for a potential or actual adverse reaction to a vaccination event"
* status = #unknown
* class = $cs-act-code#IMP
* reasonReference = Reference(GeneralComplaintsAfterVaccination)
* period.start.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
* subject = Reference(ExamplePatient)

Instance: MedicalTreatmentForVaccinationAdverseReactionAtGP
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient treated in the mergency room or by a general practitioner for a potential or actual adverse reaction to a vaccination event"
* status = #unknown
* class = $cs-act-code#IMP
* reasonCode.text = "some free-text reason"
* period.start.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
* subject = Reference(ExamplePatient)



/*Instance: //break MedicalTreatmentForVaccinationAdverseReaction
InstanceOf: medical-treatment-for-vaccination-adverse-reaction
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient not treated for a potential or actual adverse reaction to a vaccination event"
* status = #final
* valueCodeableConcept = $sctIntl2021#373067005 "No (qualifier value)"
* period.start.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
* subject = Reference(ExamplePatient)
*/
