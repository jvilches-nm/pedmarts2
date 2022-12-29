view: vehicle_snapshot {
  sql_table_name: stars.vehicle_snapshot ;;

  dimension: assignment_code {
    type: string
    sql: ${TABLE}.Assignment_Code ;;
  }

  dimension: assignment_key {
    type: number
    sql: ${TABLE}.ASSIGNMENT_KEY ;;
  }

  dimension: assignment_requirement_group {
    type: number
    sql: ${TABLE}.Assignment_Requirement_Group ;;
  }

  dimension: certification_area_code {
    type: string
    sql: ${TABLE}.Certification_Area_Code ;;
  }

  dimension: certification_area_key {
    type: number
    sql: ${TABLE}.CERTIFICATION_AREA_KEY ;;
  }

  dimension: certification_area_sort_sequence {
    type: number
    sql: ${TABLE}.Certification_Area_Sort_Sequence ;;
  }

  dimension: certification_level_category {
    type: string
    sql: ${TABLE}.Certification_Level_Category ;;
  }

  dimension: certification_level_code {
    type: string
    sql: ${TABLE}.Certification_Level_Code ;;
  }

  dimension: certification_level_key {
    type: number
    sql: ${TABLE}.CERTIFICATION_LEVEL_KEY ;;
  }

  dimension: certification_level_sort_sequence {
    type: number
    sql: ${TABLE}.Certification_Level_Sort_Sequence ;;
  }

  dimension: certification_subject_area {
    type: string
    sql: ${TABLE}.Certification_Subject_Area ;;
  }

  dimension: certification_subject_area_code {
    type: string
    sql: ${TABLE}.Certification_Subject_Area_Code ;;
  }

  dimension: certification_type_category {
    type: string
    sql: ${TABLE}.Certification_Type_Category ;;
  }

  dimension: certification_type_code {
    type: string
    sql: ${TABLE}.Certification_Type_Code ;;
  }

  dimension: certification_type_key {
    type: number
    sql: ${TABLE}.CERTIFICATION_TYPE_KEY ;;
  }

  dimension: certification_type_sort_sequence {
    type: number
    sql: ${TABLE}.Certification_Type_Sort_Sequence ;;
  }

  dimension: course_assignment_required_certification_level {
    type: string
    sql: ${TABLE}.Course_Assignment_Required_Certification_Level ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: national_certification {
    type: string
    sql: ${TABLE}.National_Certification ;;
  }

  dimension: period_key_school_year {
    type: number
    sql: ${TABLE}.PERIOD_KEY_School_Year ;;
  }

  dimension_group: school_year {
    type: time
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


  dimension: staff_assignment_sort_sequence {
    type: number
    sql: ${TABLE}.Staff_Assignment_Sort_Sequence ;;
  }

  dimension: state_assignment {
    type: string
    sql: ${TABLE}.State_Assignment ;;
  }

  dimension: state_assignment_code {
    type: string
    sql: ${TABLE}.State_Assignment_Code ;;
  }

  dimension: state_certification {
    type: string
    sql: ${TABLE}.State_Certification ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
