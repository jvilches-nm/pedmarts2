view: course_certification_requirements {
  sql_table_name: stars.course_certification_requirements ;;

  dimension: certification_area_code {
    type: string
    sql: ${TABLE}.Certification_Area_Code ;;
  }
  dimension: certification_level_code {
    type: string
    sql: ${TABLE}.Certification_Level_Code ;;
  }
  dimension: certification_type_code {
    type: string
    sql: ${TABLE}."Certification_Type Code" ;;
  }
  dimension: certification_type_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Certification_Type_Key ;;
  }
  dimension: course_assignment_required_certification_area {
    type: string
    sql: ${TABLE}.Course_Assignment_Required_Certification_Area ;;
  }
  dimension: course_assignment_required_certification_level {
    type: string
    sql: ${TABLE}.Course_Assignment_Required_Certification_Level ;;
  }
  dimension: course_id {
    type: string
    sql: ${TABLE}.Course_ID ;;
  }
  dimension: course_key {
    type: number
    sql: ${TABLE}.Course_Key ;;
  }
  dimension: course_requirement_group {
    type: number
    sql: ${TABLE}.Course_Requirement_Group ;;
  }
  dimension: district_key {
    type: number
    sql: ${TABLE}.District_Key ;;
  }
  dimension: period_key {
    type: number
    sql: ${TABLE}.Period_Key ;;
  }
  dimension_group: school_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.School_Year ;;
  }
  measure: count {
    type: count
  }
}
