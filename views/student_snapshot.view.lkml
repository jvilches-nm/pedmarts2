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

}
