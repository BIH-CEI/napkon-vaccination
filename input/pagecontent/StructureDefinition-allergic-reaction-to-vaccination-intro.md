
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ----------------------- |
| Has the patient suffered a severe allergic reaction after COVID-19 vaccination? If yes, then free text | Yes / No / Unknown / Free text |
{:.grid}

| Response Option | Code |
| ------ | ---- |
| Yes | `Confirmed present (qualifier value)` |
| No | `Definately not present (qualifier value)` |
| Unknown | `Undetermined (qualifier value)` |
| Free text | `Other (qualifier value)`, use `Observation.valueCodeableConcept.text` to specify |
{:.grid}


This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}}) resource.

When specifying a free text response, use the `Other (qualifier) value` code in `Observation.valueCodeableConcept` and specify the free text response in `Observation.valueCodeableConcept.text`. This is enforced by the **codeable-concept-text-present-if-code-other** invariant.
{:.stu-note}

{% include link-list.md %}
