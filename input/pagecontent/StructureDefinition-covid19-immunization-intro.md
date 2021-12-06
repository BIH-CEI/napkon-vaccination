{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Dose number | `Immunization.protocolApplied.doseNumberPositiveInt` |
| Date/Time | `Immunization.occurencedDateTime` |
| Vaccine | `Immunization.vaccineCode` |
| Lot Number | `Immunization.lotNumber` |
| Immunization reason | `Immunization.reasonCode` |
| Immunization not performed | `Immunization.status = #not-done` |
| Reason not done | `Immunization.statusReason` |
{:.grid}

This profile of a FHIR {{resource.type}} is derived from the [History of Vaccination profile]({{resource.base}}) of the [GECCO dataset][GECCO].

The valueset bindings on the `Immunization.vaccineCode` and `Immunization.statusReason` elements have been constrained to solely feature the response options for this particular parameter of the case report form.

#### Immunization reason
The response options to the *Why did the patient get vaccinated against COVID-19/will the patient get vaccinated?* are coded through the following codes of the [NAPKON Vaccination Module Codes][NAPKON Vaccination Module Codes] and from [SNOMED CT][SNOMEDCT].

| Response Option | Code |
| --------------- | ---- |
| To protect myself from infection with SARS-CoV-2 or COVID-19 | `#2001 "To protect myself from infection with SARS-CoV-2 or from COVID-19"` |
| To protect my private environment from an infection with SARS-CoV-2 or COVID-19 | `#2002 "To protect my private environment from infection with SARS-CoV-2 or COVID-19"` |
| To protect my working environment from infection with SARS-CoV-2 or COVID-19 | `#2003 "To protect my work environment from infection with SARS-CoV-2 or COVID-19"` |
| Because everyone is getting vaccinated | `#2004 "Because everyone gets vaccinated"` |
| Because I am afraid of being discriminated against because of my vaccination status (e.g., travel ban, work ban) | `#2005 "Because I am afraid of being discriminated against due to my vaccination status (e.g. travel ban, work ban)."` |
| Other reason | [SNOMED CT][SNOMEDCT]: `Other (qualifier value)` |
| Not applicable | [SNOMED CT][SNOMEDCT]: `Not applicable (qualifier value)` |
{:.grid}

#### Immunization not performed
In case a vaccination was not performed, the `Immunization.status` element shall be set to `not-done` and the `Immunization.statusReason` element shall be set to one of the codes from the value set binding or `Immunization.statusReason.text` shall be used to provide a free text reason for the `not-done` status.
{:.stu-note}

The response options for `Immunization.statusReason` are encoded as follows:

| Response Option | Code |
| --------------- | ---- |
| Allergy to components of the vaccine | `Allergy to component of vaccine product (finding)` |
| Pregnancy | `Pregnant (finding)` |
| Other (free text) | `Other (qualifier value)` and `Immunization.statusReason.text` = free text |
{:.grid}

{% include link-list.md %}
