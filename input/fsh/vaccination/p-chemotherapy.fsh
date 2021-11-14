// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: Chemotherapy
Parent: $mii-procedure
Id: chemotherapy
Title: "Chemotherapy"
Description: "Whether a patient is or has been receiving a chemotherapy within the last 3 months"
* insert napkon-metadata(2021-09-13, #active, 1.0.0)
* insert mii-patient-reference
* status from RestrictedEventStatus
* category.coding[sct] = $sctIntl2021#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] 1..1 MS
* code.coding[sct] = $sctIntl2021#367336001 "Chemotherapy (procedure)"
* performedDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS
// TODO: IG "aktuell oder in den letzten 3 Monaten"

Instance: Chemotherapy
InstanceOf: chemotherapy
Usage: #example
Title: "Chemotherapy"
Description: "Example of a patient not receiving chemotherapy during the last 3 months"
* status = #not-done
* subject = Reference(ExamplePatient)
* performedDateTime = "2020"
