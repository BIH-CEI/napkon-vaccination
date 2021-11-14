// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ImmunomodulatoryTherapy
Parent: $mii-procedure
Id: immunomodulatory-therapy
Title: "Immunomodulatory Therapy"
Description: "Whether a patient is receiving an immunosuppressive or -modulatory therapy"
* insert napkon-metadata(2021-09-13, #active, 1.0.0)
* insert mii-patient-reference
* status from RestrictedEventStatus
* category.coding[sct] = $sctIntl2021#277132007 "Therapeutic procedure (procedure)"
* code.coding[sct] from ImmunosuppressiveImmunomodulatoryTherapy
* performedDateTime.extension contains $ext-data-absent-reason named dataAbsentReason 0..1 MS

Instance: ImmunomodulatoryTherapyNotDone
InstanceOf: immunomodulatory-therapy
Usage: #example
Title: "Immunomodulatory Therapy"
Description: "Example of a patient not receiving an immunosuppresive therapy"
* status = #not-done
* subject = Reference(ExamplePatient)
* performedDateTime = "2021"
* code.coding[sct] = $sctIntl2021#86553008 "Immunosuppressive therapy (procedure)"

Instance: ImmunomodulatoryTherapy
InstanceOf: immunomodulatory-therapy
Usage: #example
Title: "Immunomodulatory Therapy"
Description: "Example of a patient receiving an immunosuppresive therapy"
* status = #in-progress
* code.coding = $sctIntl2021#72255009 "Interleukin-2 therapy (procedure)"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021"
* code.coding[sct] = $sctIntl2021#86553008 "Immunosuppressive therapy (procedure)"
