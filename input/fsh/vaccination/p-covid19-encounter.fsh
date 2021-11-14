// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: Covid19Encounter
Parent: $mii-encounter
Id: covid19-encounter
Title: "COVID19 Encounter"
Description: "Whether a patient underwent medical treatment for COVID19"
* insert napkon-metadata(2021-10-05, #active, 1.0.0)
* period.start.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
* class from EncounterHomeHealthAmbulatoryInpatient (extensible)
* diagnosis 1..*
* diagnosis.condition only Reference(SARSCoV2Infection)
* type from $vs-kontakt-art-de (required)
* obeys reason-code-or-reference-set

Instance: Covid19EncounterInpatient
InstanceOf: covid19-encounter
Usage: #example
Title: "Medical Treatment For Vaccination Adverse Reaction"
Description: "Example of a patient hospitalized for a potential or actual adverse reaction to a vaccination event"
* status = #unknown
* class = $cs-act-code#IMP
* type = $cs-kontakt-art-de#intensivstationaer
* diagnosis.condition = Reference(SARSCoV2Infection)
* reasonReference = Reference(GeneralComplaintsAfterVaccination)
* period.start.extension[dataAbsentReason].valueCode = $cs-data-absent-reason#unknown
* subject = Reference(ExamplePatient)
