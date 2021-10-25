// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: BodyTemperatureAfterVaccination // can't use gecco-observation-body-temperature because effective[x] is not known and value[x] must be valueCodeableConcept
Parent: Observation
Id: body-temperature-after-vaccination
Title: "Body Temperature After Vaccination"
Description: "Maximal body temperature after a vaccination event (indicating fever)"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#386725007 "Body temperature (observable entity)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from BodyTemperature (required)

Instance: BodyTemperatureAfterVaccination
InstanceOf: body-temperature-after-vaccination
Usage: #example
Title: "Body Temperature After Vaccination"
Description: "Example of an elevated body temperature after vaccination"
* status = #final
* valueCodeableConcept = $nvm#7003 "38,0 °C bis 38,4 °C"
