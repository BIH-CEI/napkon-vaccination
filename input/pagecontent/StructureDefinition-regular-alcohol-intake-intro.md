
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Do you drink alcohol occasionally? 	| *Days per week alcoholic drinks consumed"* |
{:.grid}

| Response Option | Observation.valueQuantity | Observation.valueRange.low | Observation.valueRange.high | Observation.dataAbsentReason |
| ------ | :----: | :----: | :----: | :----: |
| Yes, once a month or less often | - | - | `0.25 #/wk`| - |
| Yes, 2-4 times a month | - | `0.25 #/wk` | `0.5 #/wk` | - |
| Yes, 2-3 times a week | - | `2 #/wk` | `3 #/wk` | - |
| Yes, 4 times a week or more | - | `4 #/wk` | - | - |
| No | `0` | - | - | - |
| No more (I used to drink alcohol occasionally.) | `0` | - | - | - |
| No answer | - | - | - | set (from [ValueSet][VSdataAbsentReason]) |
{:.grid}

This profile is used in conjunction with the [Regular Alcohol Intake Quantity profile][Regular Alcohol Intake Quantity] to indicate the number of alcoholic beverages per day.


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
