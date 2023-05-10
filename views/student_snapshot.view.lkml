include: "student_base.view"
view: student_snapshot {
  extends: [student_base]

  dimension: school_year_end_date {
    type: date
    hidden: yes
    description: "The last day in the school year"
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    label: "School Year"
    description: "The two calendar years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_Year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_Year) as varchar) ;;
  }

  dimension: student_home_address {
    type: string
    description: "Student Home Address"
    sql: coalesce(${TABLE}.student_address_street_1,'') + ' ' + coalesce(${TABLE}.student_address_street_2, '') + ', ' + coalesce(${TABLE}.student_address_city,'') +', '+ coalesce(${TABLE}.student_address_state,'') + ' ' + coalesce(${TABLE}.student_address_zip_code, '');;
  }

  measure: race_asian_selected {
    type: sum
    description: "If Asian was selected as any of the five race fields then count this record."
    sql: case when ${student_race_1_code}='A' OR ${student_race_2_code}='A' OR ${student_race_3_code}='A' OR ${student_race_4_code}='A' OR ${student_race_5_code}='A' then 1 else 0 end;;
  }

  measure: race_black_selected {
    type: sum
    description: "If Black was selected as any of the five race fields then count this record."
    sql: case when ${student_race_1_code}='B' OR ${student_race_2_code}='B' OR ${student_race_3_code}='B' OR ${student_race_4_code}='B' OR ${student_race_5_code}='B' then 1 else 0 end;;
  }

  measure: race_white_selected {
    type: sum
    description: "If Caucasian/White was selected as any of the five race fields then count this record."
    sql: case when ${student_race_1_code}='C' OR ${student_race_2_code}='C' OR ${student_race_3_code}='C' OR ${student_race_4_code}='C' OR ${student_race_5_code}='C' then 1 else 0 end;;
  }

  measure: race_native_selected {
    type: sum
    description: "If Native American was selected as any of the five race fields then count this record."
    sql: case when ${student_race_1_code}='I' OR ${student_race_2_code}='I' OR ${student_race_3_code}='I' OR ${student_race_4_code}='I' OR ${student_race_5_code}='I' then 1 else 0 end;;
  }

  measure: race_pacific_selected {
    type: sum
    description: "If Pacific Islander was selected as any of the five race fields then count this record."
    sql: case when ${student_race_1_code}='P' OR ${student_race_2_code}='P' OR ${student_race_3_code}='P' OR ${student_race_4_code}='P' OR ${student_race_5_code}='P' then 1 else 0 end;;
  }

  measure: race_hispanic_selected {
    type: sum
    description: "If Hispanic was selected then count this record."
    sql: case when ${student_hispanic_indicator}='Yes' then 1 else 0 end;;
  }

  measure: student_count_male {
    type: sum
    description: "If gender is male then count this record."
    sql: case when ${gender}='Male' then 1 else 0 end;;
  }

  measure: student_count_female {
    type: sum
    description: "If gender is female then count this record."
    sql: case when ${gender}='Female' then 1 else 0 end;;
  }

  measure: student_count_hispanic {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Hispanic then count this record."
    sql: case when ${student_race_ethnicity_derived}='Hispanic' then 1 else 0 end;;
  }
  measure: student_count_native_american {
    type: sum
    description: "If the federal reporting value for race/ethnicity is American Indian then count this record."
    sql: case when ${student_race_ethnicity_derived}='American Indian/Alaskan Native' then 1 else 0 end;;
  }
  measure: student_count_white {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Caucasian then count this record."
    sql: case when ${student_race_ethnicity_derived}='Caucasian' then 1 else 0 end;;
  }
  measure: student_count_black {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Black/African American then count this record."
    sql: case when ${student_race_ethnicity_derived}='Black or African American' then 1 else 0 end;;
  }
  measure: student_count_hawaiian {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Hawaiian/Pacific Islander then count this record."
    sql: case when ${student_race_ethnicity_derived}='Native Hawaiian or Other Pacific Islander' then 1 else 0 end;;
  }
  measure: student_count_asian {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Asian then count this record."
    sql: case when ${student_race_ethnicity_derived}='Asian' then 1 else 0 end;;
  }
  measure: student_count_multiracial {
    type: sum
    description: "If the federal reporting value for race/ethnicity is Multiracial then count this record."
    sql: case when ${student_race_ethnicity_derived}='Multiracial' then 1 else 0 end;;
  }

  measure: student_count_gifted {
    type: sum
    description: "Count of students who are participating in a gifted program."
    sql: case when ${gifted_participation}='Yes' then 1
              else 0 end;;
  }

  measure: student_count_homeless {
    type: sum
    description: "Count of students who are homeless."
    sql: case when ${homeless_status_code}='N' then 0 else 1 end;;
  }

  measure: student_count_military {
    type: sum
    description: "Count of students who belong to a military family."
    sql: case when ${military_family_code} is null then 0 else 1 end;;
  }

  measure: student_count_FRL_eligible {
    type: sum
    description: "Count of students who are eligible for a free/reduced lunch program."
    sql: case when ${food_program_eligibility_code}='F' then 1
              when ${food_program_eligibility_code}='R' then 1
              else 0 end;;
  }
  measure: student_count_FRL_participation {
    type: sum
    description: "Count of students who are participating in a free/reduced lunch program."
    sql: case when ${food_program_participation_code}='F' then 1
              when ${food_program_participation_code}='R' then 1
              else 0 end;;
  }
  measure: student_count_economically_disadvantaged{
    type: sum
    description: "Count of students who have an economically disadvantaged status."
    sql: case when ${economically_disadvantaged_status_code}='1' then 1
              when ${economically_disadvantaged_status_code}='2' then 1
              when ${economically_disadvantaged_status_code}='3' then 1
              else 0 end;;
  }


  measure: student_count_504 {
    type: sum
    description: "Count of students with disabilities who have Plan 504 selected"
    sql: case when ${section_504_status}='Yes' then 1 else 0 end;;
  }

}
