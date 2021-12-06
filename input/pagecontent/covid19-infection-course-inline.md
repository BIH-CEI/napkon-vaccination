| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| What was the course of the infection?	 | I did not fall ill (had no symptoms) / <br/>I was ill and at home / <br/>I was ill and in hospital without oxygen therapy / <br/>I was ill and in hospital with oxygen therapy / <br/> I was ill and in hospital in an intensive care unit |
{:.grid}

The response options are encoded as follows using:
* [COVID-19 Encounter][COVID-19 Encounter] to specify the class of a medical encounter (home, inpatient, intensive care),
* [SARS CoV2 Infection][SARS CoV2 Infection] to specify the actual infection, which is referenced in `Encounter.diagnosis.condition`,
* [COVID-19 Oxygen Therapy][COVID-19 Oxygen Therapy] to indicate an oxygen therapy, if performed.



| Response Option | COVID19Encounter instance | COVID19Encounter.class | SARSCoV2Infection.verificationStatus | COVID19OxygenTherapy instance |
| ------ | :----: | :----: | :----: | :----: |
| I did not fall ill (had no symptoms) | ❌ | - | `#refuted` or `#confirmed` | ❌ |
| I was ill and at home | ✅ | `#HH "home health"` | `#confirmed` | ❌ |
| I was ill and in hospital without oxygen therapy | ✅ | `#IMP "inpatient encounter"` | `#confirmed` | ❌ |
| I was ill and in hospital with oxygen therapy | ✅ | `#IMP "inpatient encounter"` | `#confirmed` | ✅ |
| I was ill and in hospital in an intensive care unit | ✅ | `#intensivstationaer` | `#confirmed` | ✅ |
{:.grid}
