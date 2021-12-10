
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Do you have pain at the injection site with pressure and/or movement? | No pain present /<br/> Mild pain, this does not interfere with daily activities  /<br/> Moderate pain, it interferes with daily activities /<br/> Severe pain, resulting in inability to perform daily activities |
{:.grid}

The two pain provoking modalities (pressure / movement) and their intensity are encoded in the `Observation.component` attribute of this profile (**not** in `Observation.value`!). See the following table for how to specify the two different pain provoking factors:

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Do you have pain at the injection site with pressure? | Observation.component.code = `Rest pain (finding)` |
| Do you have pain at the injection site with movement? | Observation.component.code = `Pain provoked by movement (finding)` |
{:.grid}

The response options are encoded using two code systems, [SNOMED CT][SNOMEDCT] for the pain intensity (no pain / mild / moderate /severe) and the [CTCAE Grade Code System][CTCAE Grade Code System] for the interference of daily activities, as shown below:

| Response Option | Observation.component.valueCodeableConcept |
| ------ | ---- |
| No pain present | [SNOMED CT][SNOMEDCT]: `None (qualifier value)` <br/> [CTCAE][CTCAE Grade Code System]: `#0 "Absent Adverse Event"`|
| Mild pain, this does not interfere with daily activities | [SNOMED CT][SNOMEDCT]: `Mild (qualifier value)`<br/>[CTCAE][CTCAE Grade Code System]: `#1 "Mild Adverse Event"` |
| Moderate pain, it interferes with daily activities   | [SNOMED CT][SNOMEDCT]: `Moderate (severity modifier) (qualifier value)`<br/>[CTCAE][CTCAE Grade Code System]: `#2 "Moderate Adverse Event"` |
| Severe pain, resulting in inability to perform daily activities  | [SNOMED CT][SNOMEDCT]: `Severe (severity modifier) (qualifier value)` <br/>[CTCAE][CTCAE Grade Code System]: `#3 "Severe Adverse Event"` |
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
