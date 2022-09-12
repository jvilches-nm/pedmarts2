view: perkins_students {
  sql_table_name: StateDB.perkins_students ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    hidden: yes
    sql: ${TABLE}.ID ;;
  }

  dimension: car_indicator_1_s1_denominator {
    type: number
    label: "CAR Indicator 1S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_1S1_Denominator ;;
  }

  dimension: car_indicator_1_s1_numerator {
    type: number
    label: "CAR Indicator 1S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_1S1_Numerator ;;
  }

  dimension: car_indicator_1_s2_denominator {
    type: number
    label: "CAR Indicator 1S2 Denominator"
    sql: ${TABLE}.CAR_Indicator_1S2_Denominator ;;
  }

  dimension: car_indicator_1_s2_numerator {
    type: number
    label: "CAR Indicator 1S2 Numerator"
    sql: ${TABLE}.CAR_Indicator_1S2_Numerator ;;
  }

  dimension: car_indicator_2_s1_denominator {
    type: number
    label: "CAR Indicator 2S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_2S1_Denominator ;;
  }

  dimension: car_indicator_2_s1_numerator {
    type: number
    label: "CAR Indicator 2S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_2S1_Numerator ;;
  }

  dimension: car_indicator_2_s2_denominator {
    type: number
    label: "CAR Indicator 2S2 Denominator"
    sql: ${TABLE}.CAR_Indicator_2S2_Denominator ;;
  }

  dimension: car_indicator_2_s2_numerator {
    type: number
    label: "CAR Indicator 2S2 Numerator"
    sql: ${TABLE}.CAR_Indicator_2S2_Numerator ;;
  }

  dimension: car_indicator_2_s3_denominator {
    type: number
    label: "CAR Indicator 2S3 Denominator"
    sql: ${TABLE}.CAR_Indicator_2S3_Denominator ;;
  }

  dimension: car_indicator_2_s3_numerator {
    type: number
    label: "CAR Indicator 2S3 Numerator"
    sql: ${TABLE}.CAR_Indicator_2S3_Numerator ;;
  }

  dimension: car_indicator_3_s1_denominator {
    type: number
    label: "CAR Indicator 3S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_3S1_Denominator ;;
  }

  dimension: car_indicator_3_s1_numerator {
    type: number
    label: "CAR Indicator 3S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_3S1_Numerator ;;
  }

  dimension: car_indicator_4_s1_denominator {
    type: number
    label: "CAR Indicator 4S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_4S1_Denominator ;;
  }

  dimension: car_indicator_4_s1_numerator {
    type: number
    label: "CAR Indicator 4S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_4S1_Numerator ;;
  }

  dimension: car_indicator_5_s1_denominator {
    type: number
    label: "CAR Indicator 5S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_5S1_Denominator ;;
  }

  dimension: car_indicator_5_s1_numerator {
    type: number
    label: "CAR Indicator 5S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_5S1_Numerator ;;
  }

  dimension: car_indicator_5_s2_denominator {
    type: number
    label: "CAR Indicator 5S2 Denominator"
    sql: ${TABLE}.CAR_Indicator_5S2_Denominator ;;
  }

  dimension: car_indicator_5_s2_numerator {
    type: number
    label: "CAR Indicator 5S2 Numerator"
    sql: ${TABLE}.CAR_Indicator_5S2_Numerator ;;
  }

  dimension: car_indicator_5_s3_numerator {
    type: number
    label: "CAR Indicator 5S3 Numerator"
    sql: ${TABLE}.CAR_Indicator_5S3_Numerator ;;
  }

  dimension: car_indicator_5_s4_numerator {
    type: number
    label: "CAR Indicator 5S4 Numerator"
    sql: ${TABLE}.CAR_Indicator_5S4_Numerator ;;
  }

  dimension: car_indicator_6_s1_denominator {
    type: number
    label: "CAR Indicator 6S1 Denominator"
    sql: ${TABLE}.CAR_Indicator_6S1_Denominator ;;
  }

  dimension: car_indicator_6_s1_numerator {
    type: number
    label: "CAR Indicator 6S1 Numerator"
    sql: ${TABLE}.CAR_Indicator_6S1_Numerator ;;
  }

  dimension: car_indicator_6_s2_denominator {
    type: number
    label: "CAR Indicator 6S2 Denominator"
    sql: ${TABLE}.CAR_Indicator_6S2_Denominator ;;
  }

  dimension: car_indicator_6_s2_numerator {
    type: number
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

  dimension: concentrators {
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
    #hidden: yes
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
    #hidden: yes
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
 type: count
drill_fields: [concentrators]
}

  measure: count {
    type: count
    drill_fields: [id]
  }
}
