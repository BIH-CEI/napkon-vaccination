
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Intake of painkillers or antipyretic drugs after vaccination | Yes / No / Unknown |
{:.grid}

| Response Option | MedicationStatement.status |
| ------ | ---- |
| Yes | `#active` or `#completed` |
| No | `#not-taken` |
| Unknown | `#unknown` |
{:.grid}

`MedicationStatement.reasonCode` is constraint to `Administration of vaccine to produce active immunity (procedure)`.

{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [MII Medikation]({{resource.base}})
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
