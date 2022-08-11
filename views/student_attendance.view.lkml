view: student_attendance {
  sql_table_name: stars.student_attendance ;;

  dimension: attendance {
    type: string
    sql: ${TABLE}.Attendance ;;
  }

  dimension: attendance_category {
    type: string
    sql: ${TABLE}.Attendance_Category ;;
  }

  dimension: attendance_code {
    type: string
    sql: ${TABLE}.Attendance_Code ;;
  }

  dimension: attendance_code_type {
    type: string
    sql: ${TABLE}.Attendance_Code_Type ;;
  }

  dimension: attendance_key {
    type: number
    sql: ${TABLE}.ATTENDANCE_KEY ;;
  }

  dimension: attendance_sort_sequence {
    type: number
    sql: ${TABLE}.Attendance_Sort_Sequence ;;
  }

  dimension: attendance_status {
    type: string
    sql: ${TABLE}.Attendance_Status ;;
  }

  dimension: attendance_type {
    type: string
    sql: ${TABLE}.Attendance_Type ;;
  }

  dimension: date_description {
    type: string
    sql: ${TABLE}.Date_Description ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.End_Date ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: marking_period {
    type: string
    sql: ${TABLE}.Marking_Period ;;
  }

  dimension: marking_period_number {
    type: number
    sql: ${TABLE}.Marking_Period_Number ;;
  }

  dimension: period_level {
    type: string
    sql: ${TABLE}.Period_Level ;;
  }

  dimension: period_level_type {
    type: string
    sql: ${TABLE}.Period_Level_Type ;;
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

  dimension_group: start {
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
    sql: ${TABLE}.Start_Date ;;
  }

  dimension: state_attendance {
    type: string
    sql: ${TABLE}.State_Attendance ;;
  }

  dimension: state_attendance_code {
    type: string
    sql: ${TABLE}.State_Attendance_Code ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_name {
    type: string
    sql: ${TABLE}.Student_Name ;;
  }

  measure: count {
    type: count
    drill_fields: [student_name]
  }
}
