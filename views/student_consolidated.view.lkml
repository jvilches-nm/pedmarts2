 view: student_consolidated {
   derived_table: {
     sql: select y.* from
            (select ss.* from stars.student_snapshot ss
               inner join (select school_year, period_key, student_id, max(student_key) max_student_key from stars.student_snapshot
             group by school_year, period_key, student_id) x on x.school_year=ss.school_year and x.period_key=ss.period_key and x.student_id=ss.student_id and x.max_student_key=ss.student_key) y
          inner join (select school_year, student_id, max(period_key) max_period_key from stars.student_snapshot s group by school_year, student_id) z on z.school_year=y.school_year and z.student_id=y.student_id and z.max_period_key=y.period_key ;;
   }

  dimension: alternate_student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Alternate_Student_ID ;;
  }

  dimension: at_risk_student {
    type: string
    hidden: yes
    sql: ${TABLE}.At_Risk_Student ;;
  }

  dimension: credential_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Credential_Type ;;
  }

  dimension: credential_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Credential_Type_Code ;;
  }

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

  dimension: direct_certification_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Direct_Certification_Status_Code ;;
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

  dimension: district_county {
    type: string
    hidden: yes
    sql: ${TABLE}.District_County ;;
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

  dimension: ell_program_eligibility {
    type: string
    sql: ${TABLE}.ELL_Program_Eligibility ;;
  }

  dimension: ell_program_eligibility_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ELL_Program_Eligibility_Code ;;
  }

  dimension: ell_program_participation {
    type: string
    sql: ${TABLE}.ELL_Program_Participation ;;
  }

  dimension: ell_program_participation_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ELL_Program_Participation_Code ;;
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

  dimension: family_identifier {
    type: string
    hidden: yes
    sql: ${TABLE}.Family_Identifier ;;
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
    sql: ${TABLE}.FOSTER_CARE_IND ;;
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

  dimension: grade_01_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Grade_01_Location_ID ;;
  }

  dimension: grade_02_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Grade_02_Location_ID ;;
  }

  dimension: grade_k_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Grade_K_Location_ID ;;
  }

  dimension: graduated {
    type: string
    hidden: yes
    sql: ${TABLE}.Graduated ;;
  }

  dimension: graduation_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Graduation_Status ;;
  }

  dimension: graduation_year {
    type: string
    hidden: yes
    sql: ${TABLE}.Graduation_Year ;;
  }

  dimension: graduation_year_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Graduation_Year_Code ;;
  }

  dimension: guardian_daytime_phone {
    type: string
    hidden: yes
    sql: ${TABLE}.Guardian_Daytime_Phone ;;
  }

  dimension: guardian_email {
    type: string
    hidden: yes
    sql: ${TABLE}.Guardian_Email ;;
  }

  dimension: guardian_name {
    type: string
    description: "Name of the student's primary guardian"
    sql: ${TABLE}.Guardian_Name ;;
  }

  dimension: guardian_name_alternate {
    type: string
    hidden: yes
    sql: ${TABLE}.Guardian_Name_Alternate ;;
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

  dimension: location_county {
    type: string
    hidden: yes
    sql: ${TABLE}.location_county ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_Key ;;
  }

  dimension: migrant_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Migrant_Status ;;
  }

  dimension: migrant_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Migrant_Status_Code ;;
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

  dimension: planned_post_graduate_activity_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Planned_Post_Graduate_Activity_Code ;;
  }

  dimension: primary_disability {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Disability ;;
  }

  dimension: primary_disability_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Disability_Code ;;
  }

  dimension: primary_language {
    type: string
    label: "BEP Program Language"
    description: "Language if student is part of a BEP program (Bilingual Multicultural Education Program)"
    sql: ${TABLE}.Primary_Language ;;
  }

  dimension: primary_language_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Language_Code ;;
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

  dimension: single_parent_household {
    type: string
    hidden: yes
    sql: ${TABLE}.Single_Parent_Household ;;
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

  dimension: special_ed_transition_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Special_Ed_Transition_Status ;;
  }

  dimension: student_address_base_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_Base_Zip_Code ;;
  }

  dimension: student_address_city {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_City ;;
  }

  dimension: student_address_state {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_State ;;
  }

  dimension: student_address_street_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_Street_1 ;;
  }

  dimension: student_address_street_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_Street_2 ;;
  }

  dimension: student_address_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Address_Zip_Code ;;
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
  }

  dimension: student_hispanic_indicator {
    type: string
    label: "Hispanic Indicator"
    description: "Student is of Hispanic ethnicity: Yes/No"
    sql: ${TABLE}.Student_Hispanic_Indicator ;;
  }

  dimension: student_id {
    type: string
    hidden: yes
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
    description: "Student name: last, first"
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

  dimension: snapshot_period {
    type: string
    hidden: yes
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}.Student_Snapshot_Date)=10 then '40 Day'
               when month(${TABLE}.Student_Snapshot_Date)=12 then '80 Day'
               when month(${TABLE}.Student_Snapshot_Date)=3 then '120 Day'
               when month(${TABLE}.Student_Snapshot_date)=6 then 'End of Year'
               else 'Unknown' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}.Student_Snapshot_Date)=10 then 1
               when month(${TABLE}.Student_Snapshot_Date)=12 then 2
               when month(${TABLE}.Student_Snapshot_Date)=3 then 3
               when month(${TABLE}.Student_Snapshot_date)=6 then 4
               else 5 end;;
  }

  dimension: student_snapshot_key {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.Student_Snapshot_Key ;;
  }

  dimension: student_special_program {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Special_Program ;;
  }

  dimension: student_special_program_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Special_Program_Code ;;
  }

  dimension: years_in_us_schools {
    type: number
    description: "Number of years enrolled in US schools, not including PreK"
    sql: ${TABLE}.Years_in_US_Schools ;;
  }

  dimension: student_race_indian_education {
    type: string
    description: "Student's race as defined by the Indian Education department - if any of the five race fields contains American Indian/Alaskan Native, then this field will indicate that, otherwise it uses the derived race/ethnicity."
    sql: case when ${student_race_1_code}='I' then 'American Indian/Alaskan Native'
              when ${student_race_2_code}='I' then 'American Indian/Alaskan Native'
              when ${student_race_3_code}='I' then 'American Indian/Alaskan Native'
              when ${student_race_4_code}='I' then 'American Indian/Alaskan Native'
              when ${student_race_5_code}='I' then 'American Indian/Alaskan Native'
              else ${student_race_ethnicity_derived} end;;
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

  measure: at_risk_english_learner_count {
    type: sum
    description: "Count of students who are at-risk due to being English language learners"
    sql: case when ${english_proficiency_code}='1' then 1
      else 0 end;;
  }

  measure: at_risk_native_count {
    type: sum
    description: "Count of students who are at-risk due to being Native American"
    sql: case when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 1
      else 0 end;;
  }

  measure: at_risk_special_ed_count {
    type: sum
    description: "Count of students who are at-risk due to being special education"
    sql: case when ${special_ed_status_code}='Y' then 1
      else 0 end;;
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

  measure: student_race_indian_eduction_count {
    type: sum
    description: "Count of students who are American Indian as defined by the Indian Education department"
    sql: case when ${student_race_1_code}='I' then 1
              when ${student_race_2_code}='I' then 1
              when ${student_race_3_code}='I' then 1
              when ${student_race_4_code}='I' then 1
              when ${student_race_5_code}='I' then 1
              else 0 end;;
  }

  measure: count {
    type: count
    drill_fields: [student_name_full, grade_level, districts.district_name_full, locations.location_name_full]
  }
 }
