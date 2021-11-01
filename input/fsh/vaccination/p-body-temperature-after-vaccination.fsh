// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: BodyTemperatureAfterVaccination // can't use gecco-observation-body-temperature because effective[x] is not known and value[x] must be valueCodeableConcept
Parent: Observation
Id: body-temperature-after-vaccination
Title: "Body Temperature After Vaccination"
Description: "Maximal body temperature after a vaccination event (indicating fever)"
* insert napkon-metadata(2021-10-05, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    sct 1..*
* code.coding[sct] = $sctIntl2021#386725007 "Body temperature (observable entity)"
* code.coding[sct].system 1..
* code.coding[sct].code 1..
* value[x] MS
* value[x] only Range or Quantity
* valueQuantity MS
  * system 1.. MS
  * system = $ucum
  * value 1.. MS
  * unit 1.. MS
  * unit = "DegreesCelsius"
  * code 1.. MS
  * code = #Cel
* valueRange
  * low
    * system 1.. MS
    * system = $ucum
    * value 1.. MS
    * unit 1.. MS
    * unit = "DegreesCelsius"
    * code 1.. MS
    * code = #Cel
  * high
    * system 1.. MS
    * system = $ucum
    * value 1.. MS
    * unit 1.. MS
    * unit = "DegreesCelsius"
    * code 1.. MS
    * code = #Cel

Instance: BodyTemperatureAfterVaccinationQuantity
InstanceOf: body-temperature-after-vaccination
Usage: #example
Title: "Body Temperature After Vaccination"
Description: "Example of an elevated body temperature after vaccination"
* status = #final
* valueQuantity = 37.5 #Cel
* subject = Reference(ExamplePatient)

Instance: BodyTemperatureAfterVaccinationRange
InstanceOf: body-temperature-after-vaccination
Usage: #example
Title: "Body Temperature After Vaccination"
Description: "Example of an elevated body temperature after vaccination"
* status = #final
* valueRange
  * low = 37.5 #Cel
  * high = 38.0 #Cel
* subject = Reference(ExamplePatient)
