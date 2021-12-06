
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute | Response Options |
| -------------------------- | ----------------------- | ---------------- |
| Have you had any general complaints since the vaccination? | `Condition.code` | Fever / Chill / Feeling feverish / Exhaustion / Fatigue / Muscle pain / Joint pain / Difficulty breathing / Dyspnea / Nausea / Vomiting / Diarrhea / Soft stool / Liquid stool / Loose Stool |
| How severe were the general complaints after vaccination? | `Condition.severity` | A little (no restriction of daily activities) /<br/>Moderate to severe (restriction of daily activities) /<br/>Very severe (daily activities are no longer possible) /<br/>Potentially life-threatening (daily activities are no longer possible) |
{:.grid}


| Response Option | Condition.code |
| ------ | ---- |
| Fieber | `Fever (finding)` |
| Schüttelfrost | `Chill (finding)` |
| Fieber mit Schüttelfrost | `Fever with chills (finding)` |
| Sich fiebrig fühlen | `Feeling feverish (finding)` |
| Abgeschlagenheit | `Exhaustion (finding)` |
| Müdigkeit | `Fatigue (finding)` |
| Muskelschmerzen | `Muscle pain (finding)` |
| Gelenkschmerzen | `Joint pain (finding)` |
| Schwierigkeiten beim Atmen | `Difficulty breathing (finding)` |
| Luftnot | `Dyspnea (finding)` |
| Übelkeit | `Nausea (finding)` |
| Erbrechen | `Vomiting symptom (finding)` |
| Durchfall | `Diarrhea (finding)` |
| Weicher Stuhl | `Soft stool (finding)` |
| Flüssiger Stuhl | `Liquid stool (finding)` |
| Dünnerer Stuhl | `Loose stool (finding)` |
{:.grid}

The severity response options are encoded using two code systems, [SNOMED CT][SNOMEDCT] for the intensity (mild / moderate /severe) and the [CTCAE Grade Code System][CTCAE Grade Code System] for the interference of daily activities, as shown below:


| Response Option | Condition.severity |
| ------ | ---- |
| A little (no restriction of daily activities)| [SNOMED CT][SNOMEDCT]: `Mild (qualifier value)`<br/>[CTCAE][CTCAE Grade Code System]: `#1 "Mild Adverse Event"` |
| Moderate to severe (restriction of daily activities) | [SNOMED CT][SNOMEDCT]: `Moderate (severity modifier) (qualifier value)`<br/>[CTCAE][CTCAE Grade Code System]: `#2 "Moderate Adverse Event"` |
| Very severe (daily activities are no longer possible) | [SNOMED CT][SNOMEDCT]: `Severe (severity modifier) (qualifier value)` <br/>[CTCAE][CTCAE Grade Code System]: `#3 "Severe Adverse Event"` |
| Potentially life-threatening (daily activities are no longer possible) | [SNOMED CT][SNOMEDCT]: `Life threatening severity (qualifier value)` <br/>[CTCAE][CTCAE Grade Code System]: `#4 "Life Threatening or Disabling Adverse Event"` |
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
