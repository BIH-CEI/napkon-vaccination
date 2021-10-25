// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: Chemotherapy
Parent: Procedure // cannot use MII prozedur profile because performed[x] cannot be determined (not known when exactly chemotherapy was performed)
Id: chemotherapy
Title: "Chemotherapy"
Description: "Whether a patient is or has been receiving a chemotherapy within the last 3 months"
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
* code.coding[sct] = $sctIntl2021#367336001	"Chemotherapy (procedure)"
* subject only Reference(Patient)
* subject MS
// TODO: IG "aktuell oder in den letzten 3 Monaten"

Instance: Chemotherapy
InstanceOf: chemotherapy
Usage: #example
Title: "Chemotherapy"
Description: "Example of a patient not receiving chemotherapy during the last 3 months"
* status = #not-done
* subject = Reference(ExamplePatient)
