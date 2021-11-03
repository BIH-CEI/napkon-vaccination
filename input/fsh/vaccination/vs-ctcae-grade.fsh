// Author Standard Health  https://github.com/standardhealth/fsh-ae/blob/master/input/fsh/VS_AdverseEvent.fsh
// LICENSE: APACHE 2.0
// TODO: check how to include license
ValueSet: CTCAEGradeVS
Id: ctcae-grade-value-set
Title: "CTCAE Grade Value Set"
Description: "CTCAE Grades 0 through 5. The grade of the adverse event, determined by CTCAE criteria, where 0 represents confirmation that the given adverse event did NOT occur, and 5 represents death. Note that grade 0 events are generally not reportable, but may be created to give positive confirmation that the clinician assessed or considered a particular AE."
* include codes from system CTCAEGradeCS
