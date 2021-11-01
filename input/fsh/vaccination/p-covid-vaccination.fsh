// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: CovidVaccination
Parent: gecco-immunization
Id: covid-vaccination
Title: "Covid Vaccination"
Description: "COVID-19 vaccination event"
* vaccineCode.coding ^slicing.discriminator.type = #pattern
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    Covid19VaccineName 0..*
* vaccineCode.coding[Covid19VaccineName] from $vs-vaccines-covid-19-names
* protocolApplied 1..* MS
* protocolApplied.doseNumberPositiveInt 1..1
* protocolApplied.targetDisease = $sctIntl2021#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"
* lotNumber MS
* lotNumber obeys must-exist-if-vaccination-performed
* obeys immunization-status-reason-if-not-done
* statusReason from covid-vaccination-contraindications (required)
* reasonCode 1..1 MS
* reasonCode from CovidVaccinationReasons
* reasonCode obeys codeable-concept-text-present-if-code-other
* reaction.detail only Reference(
    VaccinationInjectionSitePain
    or VaccinationInjectionSiteErythema
    or VaccinationInjectionSiteSwelling
    or BodyTemperatureAfterVaccination
    or AllergicReactionToVaccination
)

Instance: CovidVaccinationNotDone
InstanceOf: covid-vaccination
Usage: #example
Title: "Covid Vaccination Not Done"
Description: "Example of a patient not receiving a vaccination due to pregnancy"
* patient = Reference(ExamplePatient)
* status = #not-done
* vaccineCode.coding[absentOrUnknownImmunization] = $cs-absent-unknown-uv-ips#no-known-immunizations
* statusReason = $sctIntl2021#77386006 "Pregnant (finding)"
* protocolApplied.doseNumberPositiveInt = 4
* occurrenceDateTime = "2021-10-01T13:06:00+02:00"
* reasonCode = $sctIntl2021#385432009 "Not applicable (qualifier value)"

Instance: CovidVaccinationNotDoneReasonOther
InstanceOf: covid-vaccination
Usage: #example
Title: "Covid Vaccination Not Done Reason Other"
Description: "Example of a patient not receiving a vaccination due to a specified (free-text) 'other reason'"
* patient = Reference(ExamplePatient)
* status = #not-done
* vaccineCode.coding[absentOrUnknownImmunization] = $cs-absent-unknown-uv-ips#no-known-immunizations
* statusReason = $sctIntl2021#74964007 "Other (qualifier value)"
* statusReason.text = "test"
* protocolApplied.doseNumberPositiveInt = 4
* occurrenceDateTime = "2021-10-01T13:06:00+02:00"
* reasonCode = $sctIntl2021#385432009 "Not applicable (qualifier value)"

Instance: CovidVaccinationDone
InstanceOf: covid-vaccination
Usage: #example
Title: "Covid Vaccination Done"
Description: "Example of a patient having received a vaccination"
* patient = Reference(ExamplePatient)
* status = #completed
* vaccineCode.coding[Covid19VaccineName] = #EU/1/20/1528 "Comirnaty"
* vaccineCode.coding[snomed] = $sctIntl2021#1119349007 "Vaccine product containing only Severe acute respiratory syndrome coronavirus 2 messenger ribonucleic acid (medicinal product)"
* protocolApplied.doseNumberPositiveInt = 4
* occurrenceDateTime = "2021-10-01T13:06:00+02:00"
* lotNumber = "batch-no #2465"
* reasonCode = $nvm#2004 "Weil alle sich impfen lassen"
