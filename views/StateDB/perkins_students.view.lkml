view: perkins_students {
  sql_table_name: StateDB.perkins_students ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.ID ;;
  }

  measure: car_indicator_1_s1_denominator {
    type: sum
    label: "CTE Four-Year Grad Rate - 1S1 Denominator"
    description: "Students who in the Reporting Year were Concentrators and were used in the Assessment Cohort graduation count."
    sql: ${TABLE}.CAR_Indicator_1S1_Denominator ;;
  }

  measure: car_indicator_1_s1_numerator {
    type: sum
    label: "CTE Four-Year Grad Rate - 1S1 Numerator"
    description: "Number of students who graduated, and who in the Reporting Year were Concentrators and were used in the Assessment Cohort graduation count."
    sql: ${TABLE}.CAR_Indicator_1S1_Numerator ;;
  }

  measure: car_indicator_1_s2_denominator {
    type: sum
    label: "CTE Extended Grad Rate - 1S2 Denominator"
    description: "Students who in the Reporting Year were Concentrators and were used in the Assessment Extended (6 year) Cohort graduation count."
    sql: ${TABLE}.CAR_Indicator_1S2_Denominator ;;
  }

  measure: car_indicator_1_s2_numerator {
    type: sum
    label: "CTE Extended Grad Rate - 1S2 Numerator"
    description: "Number of students who graduated, and who in the Reporting Year were Concentrators and were used in the Assessment Extended (6 year) Cohort graduation count."
    sql: ${TABLE}.CAR_Indicator_1S2_Numerator ;;
  }

  measure: car_indicator_2_s1_denominator {
    type: sum
    label: "Proficiency in Reading - CTE 2S1 Denominator"
    description: "Students who in the Reporting Year were Concentrators and took the Reading/Language proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S1_Denominator ;;
  }

  measure: car_indicator_2_s1_numerator {
    type: sum
    label: "Proficiency in Reading - CTE 2S1 Numerator"
    description: "Students who received a performance level of proficient, who in the Reporting Year were Concentrators and took the Reading/Language proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S1_Numerator ;;
  }

  measure: car_indicator_2_s2_denominator {
    type: sum
    label: "Proficiency in Mathematics - CTE 2S2 Denominator"
    description: "Students who in the Reporting Year were Concentrators and took the Math proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S2_Denominator ;;
  }

  measure: car_indicator_2_s2_numerator {
    type: sum
    label: "Proficiency in Mathematics - CTE 2S2 Numerator"
    description: "Students who received a performance level of proficient, and who in the Reporting Year were Concentrators and took the Math proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S2_Numerator ;;
  }

  measure: car_indicator_2_s3_denominator {
    type: sum
    label: "Proficiency in Science - CTE 2S3 Denominator"
    description: "Students who in the Reporting Year were Concentrators and took the Science proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S3_Denominator ;;
  }

  measure: car_indicator_2_s3_numerator {
    type: sum
    label: "Proficiency in Science - CTE 2S3 Numerator"
    description: "Students who received a performance level of proficient, and who in the Reporting Year were Concentrators and took the Science proficiency test in 10th, 11th, or 12th grade."
    sql: ${TABLE}.CAR_Indicator_2S3_Numerator ;;
  }

  measure: car_indicator_3_s1_denominator {
    type: sum
    label: "Post-Program Placement - CTE 3S1 Denominator"
    description: "Number of CTE concentrators who enrolled during the Lag year but not enrolled during the Reporting Year (i.e. exited during the reporting year)."
    sql: ${TABLE}.CAR_Indicator_3S1_Denominator ;;
  }

  measure: car_indicator_3_s1_numerator {
    type: sum
    label: "Post-Program Placement - CTE 3S1 Numerator"
    description: "Number of students who are identified as being placed in one or more categories [postsecondary enrollment, employment wages of at least 75% of full time minimum wage for the October thru December quarter, enrollment in the military, or placement in an approved service program], and who were not enrolled in the Reporting Year."
    sql: ${TABLE}.CAR_Indicator_3S1_Numerator ;;
  }

  measure: car_indicator_4_s1_denominator {
    type: sum
    label: "Non-traditional Concentration - CTE 4S1 Denominator"
    description: "Students who in the Reporting Year were CTE Concentrators and took one or more non-traditional courses."
    sql: ${TABLE}.CAR_Indicator_4S1_Denominator ;;
  }

  measure: car_indicator_4_s1_numerator {
    type: sum
    label: "Non-traditional Concentration - CTE 4S1 Numerator"
    description: "Number of students who took one or more courses in which their gender is the non-traditional gender for the course, and who in the Reporting Year were CTE Concentrators."
    sql: ${TABLE}.CAR_Indicator_4S1_Numerator ;;
  }

  measure: car_indicator_5_s1_denominator {
    type: sum
    label: "Attained Postsecondary Credentials - CTE 5S1 Denominator"
    description: "Students who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S1_Denominator ;;
  }

  measure: car_indicator_5_s1_numerator {
    type: sum
    label: "Attained Postsecondary Credentials - CTE 5S1 Numerator"
    description: "Number of students who earned a state-recognized CTE credential, and who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S1_Numerator ;;
  }

  measure: car_indicator_5_s2_denominator {
    type: sum
    label: "Attained Postsecondary Credits - CTE 5S2 Denominator"
    description: "Students who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S2_Denominator ;;
  }

  measure: car_indicator_5_s2_numerator {
    type: sum
    label: "Attained Postsecondary Credits - CTE 5S2 Numerator"
    description: "Number of students who enrolled in a dual credit course in the program in which they are concentrating, and who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S2_Numerator ;;
  }

  measure: car_indicator_5_s3_numerator {
    type: sum
    label: "Participated in Work Based Learning - CTE 5S3 Numerator"
    description: "Number of students who completed a course identified as work-based learning, and who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S3_Numerator ;;
  }

  measure: car_indicator_5_s4_numerator {
    type: sum
    label: "CTE Total Program Quality - 5S4 Numerator"
    description: "Number of unique students who demonstrated one or more indicators of program quality; either earning a state-recognized CTE credential, enrolled in a dual credit course or completing a course identified as work-based learning, and who in the Reporting Year were CTE Concentrators who graduated."
    sql: ${TABLE}.CAR_Indicator_5S4_Numerator ;;
  }

  measure: car_indicator_6_s1_denominator {
    type: sum
    label: "CTE Completers - 6S1 Denominator"
    description: "Students who in the Reporting Year were enrolled at the school."
    sql: ${TABLE}.CAR_Indicator_6S1_Denominator ;;
  }

  measure: car_indicator_6_s1_numerator {
    type: sum
    label: "CTE Completers - 6S1 Numerator"
    description: "Number of students who were CTE Completers (Concentrator + capstone course) during the reporting year."
    sql: ${TABLE}.CAR_Indicator_6S1_Numerator ;;
  }

  measure: car_indicator_6_s2_denominator {
    type: sum
    label: "CAR Indicator 6S2 Denominator"
    sql: ${TABLE}.CAR_Indicator_6S2_Denominator ;;
  }

  measure: car_indicator_6_s2_numerator {
    type: sum
    label: "CAR Indicator 6S2 Numerator"
    sql: ${TABLE}.CAR_Indicator_6S2_Numerator ;;
  }

  dimension: car_version_number {
    type: number
    sql: ${TABLE}.CAR_Version_Number ;;
  }

  dimension: certificate {
    type: string
    sql: ${TABLE}.Certificate ;;
  }

  dimension: cohort_grad {
    type: string
    sql: ${TABLE}.Cohort_Grad ;;
  }

  dimension: completer {
    type: string
    sql: ${TABLE}.Completer ;;
  }

  dimension: concentrator {
    type: string

    sql: ${TABLE}.Concentrator ;;
  }

  measure: concentrators {
    type: number
    hidden: yes
    sql: case when ${TABLE}.Concentrator = 'Y' then 1
              when ${TABLE}.Concentrator = 'N' then 0
              else null end;;
  }



  dimension: credential {
    type: string
    sql: ${TABLE}.Credential ;;
  }

  dimension: cte_student {
    type: string
    sql: ${TABLE}.CTE_Student ;;
  }

  measure: cte_student_count {
    type: sum
    label: "Count CTE"
    sql: case when ${cte_student} = 'Y' then 1 else 0 end ;;
  }

  dimension: current_year_concentrator {
    type: string
    sql: ${TABLE}.Current_Year_Concentrator ;;
  }

  dimension: current_year_nontrad {
    type: string
    sql: ${TABLE}.Current_Year_Nontrad ;;
  }

  dimension: current_year_participant {
    type: string
    sql: ${TABLE}.Current_Year_Participant ;;
  }

  dimension: district_code {
    type: number
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: graduated {
    type: string
    sql: ${TABLE}.Graduated ;;
  }

  dimension: indicator_1_s1_lagged {
    type: string
    label: "Indicator 1S1 Lagged"
    sql: ${TABLE}.Indicator_1S1_Lagged ;;
  }

  dimension: indicator_1_s2_lagged {
    type: string
    label: "Indicator 1S2 Lagged"
    sql: ${TABLE}.Indicator_1S2_Lagged ;;
  }

  dimension: indicator_2_s1_lagged {
    type: string
    label: "Indicator 2S1 Lagged"
    sql: ${TABLE}.Indicator_2S1_Lagged ;;
  }

  dimension: indicator_2_s2_lagged {
    type: string
    label: "Indicator 2S2 Lagged"
    sql: ${TABLE}.Indicator_2S2_Lagged ;;
  }

  dimension: indicator_2_s3_lagged {
    type: string
    label: "Indicator 2S3 Lagged"
    sql: ${TABLE}.Indicator_2S3_Lagged ;;
  }

  dimension: indicator_3_s1_lagged {
    type: string
    label: "Indicator 3S1 Lagged"
    sql: ${TABLE}.Indicator_3S1_Lagged ;;
  }

  dimension: indicator_4_s1_lagged {
    type: string
    label: "Indicator 4S1 Lagged"
    sql: ${TABLE}.Indicator_4S1_Lagged ;;
  }

  dimension: indicator_5_s1_lagged {
    type: string
    label: "Indicator 5S1 Lagged"
    sql: ${TABLE}.Indicator_5S1_Lagged ;;
  }

  dimension: indicator_5_s2_lagged {
    type: string
    label: "Indicator 5S2 Lagged"
    sql: ${TABLE}.Indicator_5S2_Lagged ;;
  }

  dimension: indicator_5_s3_lagged {
    type: string
    label: "Indicator 5S3 Lagged"
    sql: ${TABLE}.Indicator_5S3_Lagged ;;
  }

  dimension: indicator_5_s4_lagged {
    type: string
    label: "Indicator 5S4 Lagged"
    sql: ${TABLE}.Indicator_5S4_Lagged ;;
  }

  dimension: indicator_6_s1_lagged {
    type: string
    label: "Indicator 6S1 Lagged"
    sql: ${TABLE}.Indicator_6S1_Lagged ;;
  }

  dimension: lag_year_data {
    type: string
    sql: ${TABLE}.LagYearData ;;
  }

  dimension_group: lagged_school_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Lagged_School_Year ;;
  }

  dimension: lagged_version_number {
    type: number
    sql: ${TABLE}.Lagged_Version_Number ;;
  }

  dimension: location_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: math_proficiency {
    type: string
    sql: ${TABLE}.Math_Proficiency ;;
  }

  dimension: nontrad {
    type: string
    sql: ${TABLE}.Nontrad ;;
  }

  dimension: nontrad_concentrator {
    type: string
    sql: ${TABLE}.Nontrad_Concentrator ;;
  }

  dimension: post_secondary_placement_type {
    type: string
    sql: ${TABLE}.Post_Secondary_Placement_Type ;;
  }

  dimension: reading_proficiency {
    type: string
    sql: ${TABLE}.Reading_Proficiency ;;
  }

  dimension: reason_for_leaving {
    type: string
    sql: ${TABLE}.Reason_for_Leaving ;;
  }

  dimension: returned_next_year {
    type: string
    sql: ${TABLE}.Returned_Next_Year ;;
  }

  dimension_group: school_year {
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
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
  hidden: yes
    label: "School Year"
    description: "The two calendar years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_Year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_Year) as varchar) ;;
  }

  dimension: science_proficiency {
    type: string
    sql: ${TABLE}.Science_Proficiency ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  dimension: used_in_extended_grad_cohort_calculation {
    type: string
    hidden: yes
    sql: ${TABLE}.Used_in_Extended_Grad_Cohort_Calculation ;;
  }

  dimension: used_in_grad_cohort_calculation {
    type: string
    hidden: yes
    sql: ${TABLE}.Used_in_Grad_Cohort_Calculation ;;
  }

  dimension: version_description {
    type: string
    label: "Version"
    sql: ${TABLE}.Version_Description ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.Version_Number ;;
  }

  dimension_group: version_reporting_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Version_Reporting_Year ;;
  }

  dimension: version_title {
    type: string
    sql: ${TABLE}.Version_Title ;;
  }

measure: concentrator_count {
 type: sum
 label: "Count Concentrator"
 sql: case when ${concentrator} = 'Y' then 1 else 0 end ;;
}

  measure: count {
    type: count
    drill_fields: [id]
  }
}
