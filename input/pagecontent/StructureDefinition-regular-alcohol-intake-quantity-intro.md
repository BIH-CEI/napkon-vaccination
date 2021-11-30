
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile is used in conjunction with the [Regular Alcohol Intake profile][Regular Alcohol Intake], the value there is non-zero.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| How many alcoholic beverages do you drink on a typical day when you drink alcohol? 	| *Alcoholic drinks per day"* |
{:.grid}

| Response Option | Observation.valueRange.low | Observation.valueRange.high | Observation.dataAbsentReason |
| ------ | :----: | :----: | :----: |
| 0,5 to 1 | `0.5 #/d` | `1 #/d` | - |
| 1,5 to 2 | `1.5 #/d` | `2 #/d` | - |
| 2,5 to 3 | `2.5 #/d` | `3 #/d` | - |
| 3,5 to 4,5 | `3.5 #/d` | `4.5 #/d` | - |
| 5 or more | `5 #/d` | - | - |
| No answer | - | - | set (from [ValueSet][VSdataAbsentReason]) |
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
