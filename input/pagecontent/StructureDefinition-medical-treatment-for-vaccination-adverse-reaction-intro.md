
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This Encounter profile is used to specify a medical encounter due to suspected or confirmed side effects of a COVID-19 immunization. The type of encounter (ambulatory vs inpatient) is specified in the `Encounter.class` attribute. The reason for the encounter is specified either as an `Encounter.reasonReference` to a [General Complaints After Vaccination] instance or as free text in the `Encounter.reasonCode.text` attribute. This is enforced by the **reason-code-or-reference-set** invariant.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Have you received medical treatment for suspected or confirmed side effects? | 	No /<br/> Yes, treatment in doctor's office or emergency room /<br/> Yes, treatment with admission to hospital |
| If yes: Why did you seek medical treatment? | *free text* / [General Complaints After Vaccination] |
{:.grid}

| Response Option | Encounter instance | Encounter.class | Encounter.reasonReference | Encounter.reasonCode.text |
| ------ | ---- | ---- | ---- |
| No | *No instance of this Encounter* | - | - |
|	Yes, treatment in doctor's office or emergency room | Yes | `#AMB "ambulatory"` | reference to a [General Complaints After Vaccination] instance | *treatment reason as free text* |
|	Yes, treatment with admission to hospital | Yes | `#IMP "inpatient` | reference to a [General Complaints After Vaccination] instance | *treatment reason as free text* |
{:.grid}



{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}})
{% if resource.base contains 'https://www.medizininformatik-initiative.de/fhir' %}
 profile of the [Medical Informatics Initiative (MII)][MII].
{% elsif resource.base contains 'https://www.netzwerk-universitaetsmedizin.de/fhir' %}
 profile of the [German Corona Consensus Dataset (GECCO)][GECCO].
{% else %}
 FHIR resource.
{% endif %}
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% if resource.base == 'https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition' %}
{% include condition-gecco-answer-options.md %}
{% endif %}

{% include link-list.md %}
