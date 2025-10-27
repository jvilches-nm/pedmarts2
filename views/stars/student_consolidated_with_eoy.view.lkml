view: student_consolidated_with_eoy {
  sql_table_name: student_consolidated_40_80_120_eoy ;;
  label: "Student Consolidated - 40/80/120/EOY"

  dimension: diploma_type {
    type: string
    description: "Type of diploma: Diploma / Certificate of Course Work Completed"
    sql: ${TABLE}.Diploma_Type ;;
  }

  dimension: diploma_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Diploma_Type_Code ;;
  }

  dimension: displaced_homemaker {
    type: string
    description: "Displaced homemaker: Yes/No"
    sql: ${TABLE}.Displaced_Homemaker ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.District_Key ;;
  }

  dimension: dwelling_arrangement {
    type: string
    label: "Homeless Dwelling Arrangement"
    description: "Tracks a homeless student's nighttime primary residence:  Shelters / Doubled–Up / Unsheltered / Hotels/Motels"
    sql: ${TABLE}.Dwelling_Arrangement ;;
  }

  dimension: dwelling_arrangement_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Dwelling_Arrangement_Code ;;
  }

  dimension: economically_disadvantaged_status {
    type: string
    description: "Directly certified to receive free meals: SNAP Direct Cert/OTHER Direct Cert/Family Members of SNAP identified"
    sql: ${TABLE}.Economically_Disadvantaged_Status ;;
  }

  dimension: economically_disadvantaged_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Economically_Disadvantaged_Status_Code ;;
  }


  dimension: english_proficiency {
    type: string
    description: "Student's english proficiency: Not tested, IFEP Initially Fluent English Proficient - Student never ELL/EL, Current ELL/EL Student, RFEP1, RFEP2, RFEP3, RFEP4, RFEP5+"
    sql: ${TABLE}.English_Proficiency ;;
  }

  dimension: english_proficiency_code {
    type: string
    hidden:  yes
    sql: ${TABLE}.English_Proficiency_Code ;;
  }

  dimension: entry_date_grade_9 {
    type: date
    description: "Date used to calculate the 9-12 grade graduation cohort"
    sql: ${TABLE}.Entry_Date_Grade_9 ;;
  }

  dimension: federal_form_506_indicator {
    type: string
    description: "Student has a verified Federal From 506 or Census Number on file: Yes/No"
    sql: ${TABLE}.Federal_Form_506_Indicator ;;
  }

  dimension: food_program_eligibility {
    type: string
    description: "Food program eligibility: Free Lunch Program/Reduced Lunch Program/Not participating"
    sql: ${TABLE}.Food_Program_Eligibility ;;
  }

  dimension: food_program_eligibility_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Food_Program_Eligibility_Code ;;
  }

  dimension: food_program_participation {
    type: string
    description: "Food program participation: Free Lunch Program/Reduced Lunch Program/Not participating"
    sql: ${TABLE}.Food_Program_Participation ;;
  }

  dimension: food_program_participation_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Food_Program_Participation_Code ;;
  }

  dimension: foreign_exchange_student {
    type: string
    description: "Student is a foreign exchange student - Yes/No"
    sql: ${TABLE}.Foreign_Exchange_Student ;;
  }

  dimension: foster_care {
    type: string
    description: "Student is in foster care - Yes/No"
    sql: case ${TABLE}.FOSTER_CARE_IND when 'Y' then 'Yes' else 'No' end ;;
  }

  dimension: gifted_participation {
    type: string
    description: "Student is gifted - Yes/No"
    sql: ${TABLE}.Gifted_Participation ;;
  }

  dimension: gifted_participation_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Gifted_Participation_Code ;;
  }

  dimension: guardian_name {
    type: string
    description: "Name of the student's primary guardian"
    sql: ${TABLE}.Guardian_Name ;;
  }

  dimension: home_language {
    type: string
    description: "Primary or heritage language spoken at home"
    sql: case ${home_language_code} when '03' then 'Hmong; mong'
          when '04' then 'Chinese (includes Cantonese; Mandarin; Chaozhou; Lahu; Taiwanese; Teochew; Toishanese)'
          when '07' then 'Laotian (includes Khmu)'
          when '08' then 'Navajo; Navaho (Diné)'
          when '11' then 'Creoles French-based'
          when '12' then 'Arabic (spoken in numerous countries including Algeria; Egypt; Iran; Iraq; Yemen)'
          when '24' then 'Sign Languages - American'
          when '25' then 'Sign Languages - English-based'
          when '91' then 'Swahili (includes Kizigua)' else ${TABLE}.Home_Language end;;
  }

  dimension: home_language_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Home_Language_Code ;;
  }

  dimension: home_schooled {
    type: string
    description: "Student is home schooled: Yes/No"
    sql: ${TABLE}.Home_Schooled_Ind ;;
  }

  dimension: homeless_status {
    type: string
    description: "Student homeless status: Homeless/Not Homeless"
    sql: ${TABLE}.Homeless_Status ;;
  }

  dimension: homeless_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Homeless_Status_Code ;;
  }

  dimension: immigrant {
    type: string
    description: "Immigrant student - a student age 3 to 21 who was not born in any State and has not been attending schools in the US for more than 3 full academic years not including PreK. Yes/No"
    sql: ${TABLE}.Immigrant ;;
  }

  dimension: level_of_integration {
    type: string
    description: "Amount of special education service. Less than 10% of the day (minimum or A) / 11% to 49% of the day (moderate or B) / 50% of the day or more, but not a full day (extensive or C) / Up to a full day or program 3Y/4Y (maximum or D)"
    sql: ${TABLE}.Level_of_Integration ;;
  }

  dimension: level_of_integration_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Level_of_Integration_Code ;;
  }

  dimension: location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Code ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_Key ;;
  }

  dimension: military_family_code {
    type: string
    description: "Military status of student's family: Active / National Guard / Reserve / DoD Civilian / Retired Military"
    sql: ${TABLE}.Military_Family_Code ;;
  }

  dimension_group: modified_date_stud_snapshot {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_date_STUD_SNAPSHOT ;;
  }

  dimension: modified_indicator_stud_snapshot {
    type: string
    hidden: yes
    sql: ${TABLE}.modified_indicator_STUD_SNAPSHOT ;;
  }

  dimension: parental_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Parental_Status_Code ;;
  }

  dimension: parental_status {
    type: string
    description: "Parental status of the student: Not a Parent, Single, Not Single"
    sql: ${TABLE}.Parental_Status_Desc ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Period_Key ;;
  }

  dimension: planned_post_graduate_activity {
    type: string
    description: "Planned activity post-graduation: Attend college/university, Attend junior college, Attend trade school, Work"
    sql: ${TABLE}.Planned_Post_Graduate_Activity ;;
  }

  dimension: primary_language_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Language_Code ;;
  }

  dimension: primary_language {
    type: string
    label: "BEP Program Language"
    description: "Language if student is part of a BEP program (Bilingual Multicultural Education Program)"
    sql: case ${primary_language_code} when '03' then 'Hmong; mong'
          when '04' then 'Chinese (includes Cantonese; Mandarin; Chaozhou; Lahu; Taiwanese; Teochew; Toishanese)'
          when '07' then 'Laotian (includes Khmu)'
          when '08' then 'Navajo; Navaho (Diné)'
          when '11' then 'Creoles French-based'
          when '12' then 'Arabic (spoken in numerous countries including Algeria; Egypt; Iran; Iraq; Yemen)'
          when '24' then 'Sign Languages - American'
          when '25' then 'Sign Languages - English-based'
          when '91' then 'Swahili (includes Kizigua)' else ${TABLE}.Primary_Language end;;
  }

  dimension: bep_program_language_category {
    type: string
    label: "BEP Program Language Category"
    description: "Grouping of languages for students in BEP programs - American Indian, Spanish, Sign Language"
    sql: case ${primary_language_code} when '01' then 'Spanish'
          when '08' then 'American Indian'
          when '16' then 'American Indian'
          when '17' then 'American Indian'
          when '18' then 'American Indian'
          when '19' then 'American Indian'
          when '20' then 'American Indian'
          when '21' then 'American Indian'
          when '24' then 'Sign Language'
          when '25' then 'Sign Language'
          else 'Other' end;;
  }

  dimension: retained {
    type: string
    description: "Repeating Last Year: Yes - Retained/No - Not retained (promoted to next grade)"
    sql: ${TABLE}.Retained ;;
  }

  dimension: school_year_end_date {
    type: date
    description: "The last day in the school year"
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two calendar years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_Year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_Year) as varchar) ;;
  }

  dimension: section_504_status {
    type: string
    description: "Student qualifies as an individual with disabilities under Section 504 of the Rehabilitation Act: Yes/No. Cannot be Yes if student is marked as Special Education."
    sql: ${TABLE}.Section_504_Status ;;
  }

  dimension: special_ed_referral {
    type: string
    description: "For special education only - Child served in Part C referred to Part B / Child referred thru Child Find (NOT rcving Part C) "
    sql: ${TABLE}.Special_Ed_Referral ;;
  }

  dimension: special_ed_referral_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Special_Ed_Referral_Code ;;
  }

  dimension: special_ed_status {
    type: string
    description: "Student with disability (has a current IEP and is receiving IDEA 618, Part B services) or regular/gifted student: Students with disabilities / Regular Education and Gifted only students"
    sql: ${TABLE}.Special_Ed_Status ;;
  }

  dimension: special_ed_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Special_Ed_Status_Code ;;
  }

  dimension_group: student_birth {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Student_Birth_Date ;;
  }

  dimension: student_age {
    type: number
    description: "Student age at the time of the snapshot."
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}.Student_Birth_date,${TABLE}.Student_Snapshot_Date))/365  ;;
  }

  dimension: student_name_first {
    type: string
    description: "Student's full first name"
    sql: ${TABLE}.Student_First_Name ;;
  }

  dimension: gender {
    type: string
    description: "Student's gender at the time of their birth: Male/Female"
    sql: ${TABLE}.Student_Gender ;;
  }

  dimension: gender_code {
    type: string
    hidden: yes
    description: "Code for the student's gender at the time of their birth: M/F"
    sql: ${TABLE}.Student_Gender_Code ;;
  }

  dimension: grade_level {
    type: string
    description: "Current grade level of the student at the time of the snapshot"
    sql: ${TABLE}.Student_Grade_Level ;;
    order_by_field: grade_level_sort_order
  }
  dimension: grade_level_sort_order {
    type: number
    hidden: yes
    description: "Current grade level of the student at the time of the snapshot - sort order"
    sql: case ${TABLE}.Student_Grade_Level when 'PK' then 1 when 'KF' then 2 when '01' then 3 when '02' then 4 when '03' then 5
                                           when '04' then 6 when '05' then 7 when '06' then 8 when '07' then 9 when '08' then 10
                                           when '09' then 11 when '10' then 12 when '11' then 13 when '12' then 14 else 15 end;;
  }

  dimension: student_hispanic_indicator {
    type: string
    label: "Hispanic Indicator"
    description: "Student is of Hispanic ethnicity: Yes/No"
    sql: ${TABLE}.Student_Hispanic_Indicator ;;
  }

  dimension: student_id {
    type: string
    description: "Student ID - use with caution; do not distribute outsdie of PED"
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_is_a_single_parent {
    type: string
    description: "Student is a single parent: Yes/No"
    sql: ${TABLE}.Student_Is_a_Single_Parent ;;
  }

  dimension: student_is_pregnant {
    type: string
    description: "Student is expecting a child: Yes/No"
    sql: ${TABLE}.Student_Is_Pregnant ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Student_Key ;;
  }

  dimension: student_name_last {
    type: string
    description: "Student's full last name"
    sql: ${TABLE}.Student_Last_Name ;;
  }

  dimension: student_lives_with {
    type: string
    label: "Unaccompanied Youth"
    description: "Is a homeless student in the presence of a parent or guardian or not? Accompanied Youth/Unaccompanied Youth"
    sql: ${TABLE}.Student_Lives_With ;;
  }

  dimension: student_lives_with_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Lives_With_Code ;;
  }

  dimension: student_name_middle {
    type: string
    description: "Student's middle initial"
    sql: ${TABLE}.Student_Middle_Initial ;;
  }

  dimension: student_name_full {
    type: string
    description: "Student name: last, first - use with caution, do not distribute outside of PED"
    sql: ${TABLE}.Student_Name ;;
  }

  dimension: student_race_1 {
    type: string
    label: "Race 1"
    description: "Student's first race identification"
    sql: ${TABLE}.Student_Race_1_Ethnicity ;;
  }

  dimension: student_race_1_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_1_Ethnicity_Code ;;
  }

  dimension: student_race_2 {
    type: string
    label: "Race 2"
    description: "Student's second race identification"
    sql: ${TABLE}.Student_Race_2 ;;
  }

  dimension: student_race_2_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_2_Code ;;
  }

  dimension: student_race_3 {
    type: string
    label: "Race 3"
    description: "Student's third race identification"
    sql: ${TABLE}.Student_Race_3 ;;
  }

  dimension: student_race_3_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_3_Code ;;
  }

  dimension: student_race_4 {
    type: string
    label: "Race 4"
    description: "Student's fourth race identification"
    sql: ${TABLE}.Student_Race_4 ;;
  }

  dimension: student_race_4_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_4_Code ;;
  }

  dimension: student_race_5 {
    type: string
    label: "Race 5"
    description: "Student's fifth race identification"
    sql: ${TABLE}.Student_Race_5 ;;
  }

  dimension: student_race_5_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_5_Code ;;
  }

  dimension: student_race_ethnicity_derived {
    type: string
    label: "Race/Ethnicity Derived"
    description: "Derived race/ethnicity value for federal reporting"
    sql: ${TABLE}.Student_Race_Ethnicity_Derived ;;
  }

  dimension: student_race_ethnicity_subgroup {
    type: string
    label: "Tribal Affiliation"
    sql: case ${TABLE}.Student_Race_Ethnicity_Subgroup_Code
          WHEN '00' THEN 'Not Applicable'
          WHEN '01' THEN 'Acoma'
          WHEN '02' THEN 'Cochiti'
          WHEN '03' THEN 'Isleta'
          WHEN '04' THEN 'Jemez'
          WHEN '05' THEN 'Jicarilla Apache'
          WHEN '06' THEN 'Laguna'
          WHEN '07' THEN 'Mescalero Apache'
          WHEN '08' THEN 'Nambe'
          WHEN '09' THEN 'Navajo'
          WHEN '10' THEN 'Picuris'
          WHEN '11' THEN 'Pojoaque'
          WHEN '12' THEN 'San Felipe'
          WHEN '13' THEN 'San IIdefonso'
          WHEN '14' THEN 'Ohkay Owingeh (formerly San Juan)'
          WHEN '15' THEN 'Sandia'
          WHEN '16' THEN 'Santa Ana'
          WHEN '17' THEN 'Santa Clara'
          WHEN '18' THEN 'Santo Domingo'
          WHEN '19' THEN 'Taos'
          WHEN '20' THEN 'Tesuque'
          WHEN '21' THEN 'Zia'
          WHEN '22' THEN 'Zuni'
          WHEN '23' THEN 'Other'
          ELSE 'Unknown'
         END;;
  }

  dimension: student_race_ethnicity_subgroup_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Race_Ethnicity_Subgroup_Code ;;
  }

  dimension_group: student_snapshot {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Student_Snapshot_Date ;;
  }

  dimension: student_snapshot_key {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.Student_Snapshot_Key ;;
  }

  dimension: years_in_us_schools {
    type: number
    description: "Number of years enrolled in US schools, not including PreK"
    sql: ${TABLE}.Years_in_US_Schools ;;
  }

  dimension: student_race_IED {
    type: string
    label: "Race - IED Definition"
    description: "Student's race as defined by the Indian Education Department - If Race 1 is Caucasian and the Hispanic indicator is Yes then Hispanic, otherwise Race 1."
    sql: case when ${student_race_1_code}='C' and ${student_hispanic_indicator}='Yes' then 'Hispanic'
      else ${student_race_1} end;;
  }

  dimension: at_risk_economically_disadvantaged {
    type: string
    description: "Student is at-risk due to being economically disadvantaged - Yes/No"
    sql: case when ${economically_disadvantaged_status_code}='1' then 'Yes'
              when ${economically_disadvantaged_status_code}='2' then 'Yes'
              when ${economically_disadvantaged_status_code}='3' then 'Yes'
              when ${food_program_eligibility_code}='F' then 'Yes'
              when ${food_program_eligibility_code}='R' then 'Yes'
              else 'No' end;;
  }

  measure: at_risk_economically_disadvantaged_count {
    type: sum
    description: "Count of students who are at-risk due to being economically disadvantaged"
    sql: case when ${economically_disadvantaged_status_code}='1' then 1
              when ${economically_disadvantaged_status_code}='2' then 1
              when ${economically_disadvantaged_status_code}='3' then 1
              when ${food_program_eligibility_code}='F' then 1
              when ${food_program_eligibility_code}='R' then 1
              else 0 end;;
  }

  dimension: at_risk_english_learner {
    type: string
    description: "Student is at-risk due to being an English language learner - Yes/No"
    sql: case when ${english_proficiency_code}='1' then 'Yes' else 'No' end;;
  }

  measure: at_risk_english_learner_count {
    type: sum
    description: "Count of students who are at-risk due to being English language learners"
    sql: case when ${english_proficiency_code}='1' then 1
      else 0 end;;
  }

  dimension: at_risk_native {
    type: string
    description: "Student is at-risk due to being Native American - Federal reporting definition - Yes/No"
    sql: case when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 'Yes' else 'No' end;;
  }

  measure: at_risk_native_count {
    type: sum
    description: "Count of students who are at-risk due to being Native American"
    sql: case when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 1
      else 0 end;;
  }

  dimension: at_risk_special_ed {
    type: string
    description: "Student is at-risk due to being special education - Yes/No"
    sql: case when ${special_ed_status_code}='Y' then 'Yes' else 'No' end;;
  }

  measure: at_risk_special_ed_count {
    type: sum
    description: "Count of students who are at-risk due to being special education"
    sql: case when ${special_ed_status_code}='Y' then 1
      else 0 end;;
  }

  dimension: at_risk_student_martinez_yazzie {
    type: string
    description: "Student's at-risk status as defined by the Martinez/Yazzie Tech Order. Student is At-Risk if economically disadvantaged, an English language learner, American Indian, or Special Education"
    sql: case when ${economically_disadvantaged_status_code}='1' then 'Yes'
              when ${economically_disadvantaged_status_code}='2' then 'Yes'
              when ${economically_disadvantaged_status_code}='3' then 'Yes'
              when ${food_program_eligibility_code}='F' then 'Yes'
              when ${food_program_eligibility_code}='R' then 'Yes'
              when ${english_proficiency_code}='1' then 'Yes'
              when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 'Yes'
              when ${special_ed_status_code}='Y' then 'Yes'
              else 'No' end;;
  }

  measure: at_risk_martinez_yazzie_count {
    type: sum
    description: "Count of students at-risk as defined by the Martinez/Yazzie Tech Order. Student is At-Risk if economically disadvantaged, an English language learner, American Indian, or Special Education"
    sql: case when ${economically_disadvantaged_status_code}='1' then 1
              when ${economically_disadvantaged_status_code}='2' then 1
              when ${economically_disadvantaged_status_code}='3' then 1
              when ${food_program_eligibility_code}='F' then 1
              when ${food_program_eligibility_code}='R' then 1
              when ${english_proficiency_code}='1' then 1
              when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 1
              when ${special_ed_status_code}='Y' then 1
              else 0 end;;
  }

  dimension: american_indian_IED {
    type: string
    label: "American Indian - IED"
    description: "Student is American Indian as defined by the Indian Education Department - Yes/No - Race 1 is American Indian/Alaskan Native"
    sql: case when ${student_race_1_code}='I' then 1
      else 0 end;;
  }

  measure: american_indian_IED_count {
    type: sum
    label: "American Indian - IED Count"
    description: "Count of students who are American Indian as defined by the Indian Education Department - Race 1 is American Indian/Alaskan Native"
    sql: case when ${student_race_1_code}='I' then 1
      else 0 end;;
  }

  measure: asian_count {
    type: sum
    label: "asian count"
    description: "Count of students who are Asian -  Race 1 is Asian"
    sql: case when ${student_race_1_code}='A' then 1
      else 0 end;;
  }

  measure: black_or_african_american_count {
    type: sum
    label: "Black or African American count"
    description: "Count of students who are Black or African American - Race 1 is Black or African American"
    sql: case when ${student_race_1_code}='B' then 1
      else 0 end;;
  }

  measure: caucasian_count {
    type: sum
    label: "Caucasian count"
    description: "Count of students who are Caucasian - Race 1 is Caucasian"
    sql: case when ${student_race_1_code}='C' then 1
      else 0 end;;
  }

  measure: native_hawaiian_or_other_pacific_islander_count {
    type: sum
    label: "Native Hawaiian or Other Pacific Islander count"
    description: "Count of students who are Native Hawaiian or Other Pacific Islander - Race 1 is Native Hawaiian or Other Pacific Islander"
    sql: case when ${student_race_1_code}='P' then 1
      else 0 end;;
  }

  measure: hispanic_count {
    type: sum
    label: "Hispanic count"
    description: "Count of students who are Hispanic - Student Hispanic Indiactor is Yes"
    sql: case when ${student_hispanic_indicator}='Yes' then 1
      else 0 end;;
  }

  measure: percent_of_student_count {
    type: percent_of_total
    sql: ${count} ;;
  }

  measure: count {
    type: count
    drill_fields: [districts.district_name_full, locations.location_name_full, grade_level]
  }
}
