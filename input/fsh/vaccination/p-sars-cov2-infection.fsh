// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: SARSCoV2Infection
Parent: $gecco-diagnosis-covid19
Id: sars-cov2-infection
Title: "SARS CoV2 Infection"
Description: "Profile to capture the diagnosis of disease caused by 2019 novel coronavirus."
* onset[x] only dateTime
* onsetDateTime MS

Instance: SARSCoV2InfectionNone
InstanceOf: sars-cov2-infection
Usage: #example
Title: "SARS CoV2 Infection"
Description: "Example of a patient without SARS CoV2 infection"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* recordedDate = "2021"
* subject = Reference(ExamplePatient)

Instance: SARSCoV2Infection
InstanceOf: sars-cov2-infection
Usage: #example
Title: "SARS CoV2 Infection"
Description: "Example of a patient with a SARS CoV2 infection"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* recordedDate = "2021"
* onsetDateTime = "2021-02-01"
* subject = Reference(ExamplePatient)

Instance: SARSCoV2InfectionUnknown
InstanceOf: sars-cov2-infection
Usage: #example
Title: "SARS CoV2 Infection"
Description: "Example of an unknown SARS CoV2 infection"
* insert uncertainty-of-presence
* recordedDate = "2021"
* onsetDateTime = "2021-02-01"
* subject = Reference(ExamplePatient)
