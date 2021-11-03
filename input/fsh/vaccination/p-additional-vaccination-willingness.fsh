// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Instance: AdditionalVaccinationWillingnessQuestionaire
InstanceOf: Questionnaire
Title: "Additional Vaccination Willingness"
Description: "Willingness of the patient to receive additional COVID-19 vaccination if officially recommended"
* insert napkon-metadata-instance(2021-11-03, #draft, 0.1.0)
* url = $additional-vaccination-willingness-questionnaire-url
* name = "AdditionalVaccinationWillingnessQuestionnaire"
* status = #active
* item[+]
  * linkId = "additional-vaccination-willingness"
  * code = $nvm#q1001 "Willingness for additional SARS-CoV-2 vaccination if recommended"
  * type = #choice
  * answerValueSet = Canonical(yes-no-unknown)

Profile: AdditionalVaccinationWillingness
Parent: QuestionnaireResponse
Id: additional-vaccination-willingness
Title: "Additional Vaccination Willingness"
Description: ""
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* insert mii-patient-reference
* questionnaire 1..1
* questionnaire = $additional-vaccination-willingness-questionnaire-url
* status = #completed

Instance: AdditionalVaccinationWillingness
InstanceOf: additional-vaccination-willingness
Usage: #example
Title: ""
Description: ""
* item[+]
  * linkId = "additional-vaccination-willingness"
  * answer.valueCoding = $sctIntl2021#373066001 "Yes (qualifier value)"
* subject = Reference(ExamplePatient)
