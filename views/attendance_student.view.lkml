view: attendance_student {
  sql_table_name: rea.attendance_student ;;

  dimension: chronic_absent {
    type: string
    sql: ${TABLE}.ChronicAbsent ;;
  }

  dimension: chronic_absentee_string {
    type: string
    sql: ${TABLE}.ChronicAbsentee_String ;;
  }

  dimension: district_code {
    type: number
    sql: ${TABLE}.District_Code ;;
  }

  dimension: full_location_name {
    type: string
    sql: ${TABLE}.Full_Location_Name ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}."Index" ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: total_days_enrolled {
    type: number
    sql: ${TABLE}.Total_Days_Enrolled ;;
  }

  dimension: total_days_present {
    type: number
    sql: ${TABLE}.Total_Days_Present ;;
  }

  dimension: total_days_unexcused_absent {
    type: number
    sql: ${TABLE}.Total_Days_Unexcused_Absent ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [full_location_name]
  }
}
