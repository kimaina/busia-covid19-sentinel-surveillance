#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('SENTINELSURVEILLANCE_DATA_2020-12-08_0811.csv')
#Setting Hmisc::labels

Hmisc::label(data$record_id)="PATIENT RECORD "
Hmisc::label(data$site_name)="Site name"
Hmisc::label(data$date_and_time)="Date and Time  "
Hmisc::label(data$date_of_birth)="Date of birth"
Hmisc::label(data$age)="Age"
Hmisc::label(data$gender)="Gender "
Hmisc::label(data$sub_county_of_residence)="Sub-County of residence"
Hmisc::label(data$ward_of_residence)="Ward of residence"
Hmisc::label(data$village_estate_of_residenc)="Village/ Estate of residence"
Hmisc::label(data$marital_status)="Marital status"
Hmisc::label(data$what_is_your_educational)="What is your educational attainment?"
Hmisc::label(data$do_you_have_a_functional_h)="Do you have a functional health cover?"
Hmisc::label(data$what_is_your_occupation)="What is your occupation?"
Hmisc::label(data$other_form_of_employment)="Other form of employment"
Hmisc::label(data$have_you_travelled_outside)="Have you travelled outside your county of residents in the past 2 weeks?"
Hmisc::label(data$which_county_did_go)="Which county did you go to"
Hmisc::label(data$have_you_been_tested_befor)="Have you been tested before for COVID-19?"
Hmisc::label(data$in_which_facility_test)="In which facility was the test done?"
Hmisc::label(data$what_was_the_test_result)="What was the test result"
Hmisc::label(data$have_you_experienced_any_b)="Have you experienced any breathing and respiratory symptoms"
Hmisc::label(data$what_are_the_specific_symp)="What are the specific  symptoms"
Hmisc::label(data$other_specific_symptoms)="other specific symptoms"
Hmisc::label(data$when_did_you_experience_it)="When did you experience it (date onset)"
Hmisc::label(data$which_kind_of_medications)="Which kind of medications are you on"
Hmisc::label(data$do_you_have_any_comorbidit)="Do you have any comorbidity or underlying condition"
Hmisc::label(data$what_is_your_condition)="What is your condition?"
Hmisc::label(data$have_you_had_a_contact_wit)="Have you had a contact with a suspected or confirmed case"
Hmisc::label(data$what_was_your_type_contact)="What was your type of contact?"
Hmisc::label(data$date_of_last_contact)="Date of last contact"
Hmisc::label(data$location_of_contact)="location of contact."
Hmisc::label(data$what_is_your_chief_complai)="What is your chief complaint(reason for visiting the hospital"
Hmisc::label(data$provisional_diagnosis_made)="Provisional diagnosis (made by the clinician"
Hmisc::label(data$covid_result)="COVID result"
Hmisc::label(data$severity_information)="Severity Information"
Hmisc::label(data$patient_hospitalized)="Patient Hospitalized"
Hmisc::label(data$patient_recovered)="Patient  Recovered"
Hmisc::label(data$patient_death)="Patient Death"
#Setting Units


#Setting Factors(will create new variable for factors)
data$site_name.factor = factor(data$site_name,levels=c("1","2","3","4"))
data$gender.factor = factor(data$gender,levels=c("1","2"))
data$marital_status.factor = factor(data$marital_status,levels=c("1","2","3","4"))
data$what_is_your_educational.factor = factor(data$what_is_your_educational,levels=c("1","2","3","4","5"))
data$do_you_have_a_functional_h.factor = factor(data$do_you_have_a_functional_h,levels=c("1","0"))
data$what_is_your_occupation.factor = factor(data$what_is_your_occupation,levels=c("1","2","3","4","5","6","7","8"))
data$have_you_travelled_outside.factor = factor(data$have_you_travelled_outside,levels=c("1","0"))
data$have_you_been_tested_befor.factor = factor(data$have_you_been_tested_befor,levels=c("1","0"))
data$what_was_the_test_result.factor = factor(data$what_was_the_test_result,levels=c("1","2","3"))
data$have_you_experienced_any_b.factor = factor(data$have_you_experienced_any_b,levels=c("1","0"))
data$what_are_the_specific_symp.factor = factor(data$what_are_the_specific_symp,levels=c("1","2","3","4","5","6"))
data$do_you_have_any_comorbidit.factor = factor(data$do_you_have_any_comorbidit,levels=c("1","0"))
data$have_you_had_a_contact_wit.factor = factor(data$have_you_had_a_contact_wit,levels=c("1","0"))
data$covid_result.factor = factor(data$covid_result,levels=c("1","2"))
data$severity_information.factor = factor(data$severity_information,levels=c("1","2"))
data$patient_hospitalized.factor = factor(data$patient_hospitalized,levels=c("1","0"))
data$patient_recovered.factor = factor(data$patient_recovered,levels=c("1","0"))
data$patient_death.factor = factor(data$patient_death,levels=c("1","2","3"))

levels(data$site_name.factor)=c("BCRH","MATAYOS","KOCHOLYA","NAMBALE")
levels(data$gender.factor)=c("MALE","FEMALE")
levels(data$marital_status.factor)=c("Single","Married","Divorced/separated","Widowed")
levels(data$what_is_your_educational.factor)=c("None","Primary","Secondary","College/university","NA")
levels(data$do_you_have_a_functional_h.factor)=c("Yes","No")
levels(data$what_is_your_occupation.factor)=c("Student","Casual worker","Farmer","Self-employed/ business owner","TEACHER","HEALTHCARE PROVIDER","OTHER (specify)","NA")
levels(data$have_you_travelled_outside.factor)=c("Yes","No")
levels(data$have_you_been_tested_befor.factor)=c("Yes","No")
levels(data$what_was_the_test_result.factor)=c("POSITIVE","NEGATIVE","DONT KNOW")
levels(data$have_you_experienced_any_b.factor)=c("Yes","No")
levels(data$what_are_the_specific_symp.factor)=c("Difficulty breathing or Shortness of breath","CHEST PAIN","FEVER","COUGH","SOAR THROAT","Others (specify)")
levels(data$do_you_have_any_comorbidit.factor)=c("Yes","No")
levels(data$have_you_had_a_contact_wit.factor)=c("Yes","No")
levels(data$covid_result.factor)=c("POSITIVE","NEGATIVE")
levels(data$severity_information.factor)=c("SYMPTOMATIC","ASYMPTOMATIC")
levels(data$patient_hospitalized.factor)=c("Yes","No")
levels(data$patient_recovered.factor)=c("Yes","No")
levels(data$patient_death.factor)=c("YES","NO","DONT KNOW")
