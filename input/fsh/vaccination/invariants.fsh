Invariant: reason-if-treated
Description: "If a patient is treated for actual or potential adverse events, a reference to the treatment reason must be supplied"
Expression: "((valueCodeableConcept.coding.system = 'https://www.netzwerk-universitaetsmedizin.de/fhir/CodeSystem/napkon-vaccination-module') and (valueCodeableConcept.coding.code='6001' or valueCodeableConcept.coding.code='6002')) implies derivedFrom.exists()"
Severity: #error
