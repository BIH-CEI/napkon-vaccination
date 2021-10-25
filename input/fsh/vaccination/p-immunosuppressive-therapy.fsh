// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ImmunomodulatoryTherapy
Parent: Procedure // cannot use MII prozedur profile because we don't require performed[x] here
Id: immunomodulatory-therapy
Title: "Immunomodulatory Therapy"
Description: "Whether a patient is receiving an immunosuppressive or -modulatory therapy"
* insert napkon-metadata(2021-09-13, #draft, 0.1.0)
* status from RestrictedEventStatus
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sctIntl2021#277132007 "Therapeutic procedure (procedure)"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] from ImmunosuppressiveImmunomodulatoryTherapy
* subject only Reference(Patient)
* subject MS

Instance: ImmunomodulatoryTherapyNotDone
InstanceOf: immunomodulatory-therapy
Usage: #example
Title: "Immunomodulatory Therapy"
Description: "Example of a patient not receiving an immunosuppresive therapy"
* status = #not-done
* subject = Reference(ExamplePatient)

Instance: ImmunomodulatoryTherapy
InstanceOf: immunomodulatory-therapy
Usage: #example
Title: "Immunomodulatory Therapy"
Description: "Example of a patient receiving an immunosuppresive therapy"
* status = #in-progress
* code.coding = $sctIntl2021#72255009 "Interleukin-2 therapy (procedure)"
* subject = Reference(ExamplePatient)
