
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Has the patient been infected with the novel coronavirus (SARS-CoV-2) in the past or has the patient tested positive?	| Yes / No / Unknown |
{:.grid}

{% include condition-gecco-answer-options.md %}

This Condition profile is used in conjunction with the [COVID-19 Encounter profile][COVID-19 Encounter] and the [COVID-19 Oxygen Therapy profile][COVID-19 Oxygen Therapy] to indicate the course of the infection.


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

{% include link-list.md %}
