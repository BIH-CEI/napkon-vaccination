
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Do you have any redness around the injection site of the vaccination? | *erythema size in cm* |
{:.grid}

The erythema size may be specified either as a specific value (e.g. 4.5 cm) in `Observation.valueQuantity` or as a range (e.g. 2.5-5.0 cm) in `Observation.valueRange`.

`Observation.bodySite` is constraint to `Injection site (morphologic abnormality)`.

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
