
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the presence/absence of chemotherapy **currently or in the last 3 months**.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Chemotherapy currently or in the last 3 months	 | Yes / No / Unknown |
{:.grid}

| Response Option | Procedure.status |
| ------ | ---- |
| Yes, currently | `#in-progress` |
| Yes, within the last 3 months | `#completed` |
| No | `#not-done` |
| Unknown | `#unknown` |
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
