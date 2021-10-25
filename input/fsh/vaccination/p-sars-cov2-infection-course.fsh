// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SARSCoV2InfectionCourse
Parent: Observation
Id: sars-cov2-infection-course-vaccination
Title: "SARS CoV2 Infection Course"
Description: "Course of a SARS CoV2 infection"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    napkon 1..*
* code.coding[napkon] = $nvm#q1006 "Course of SARS-CoV-2 Infection"
* code.coding[napkon].system 1..
* code.coding[napkon].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from SARSCov2InfectionCourse (required)

Instance: SARSCoV2InfectionCourseInstance
InstanceOf: sars-cov2-infection-course-vaccination
Usage: #example
Title: "SARS CoV2 Infection Course Instance"
Description: "Example of a patient who suffered from COVID-19 and was treated on an intensive care unit"
* status = #final
* valueCodeableConcept = $nvm#1005 "Erkrankt und im Krankenhaus auf einer Intensivstation"
