view: student_attendance {
  sql_table_name: stars.student_attendance ;;

  dimension: attendance {
    type: string
    sql: ${TABLE}.Attendance ;;
  }

  dimension: attendance_code {
    type: string
    sql: ${TABLE}.Attendance_Code ;;
  }

  dimension: school_year_end_date {
    type: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension_group: attendance {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Start_Date ;;
  }

  measure: count {
    type: count
  }

#------- Hidden, used in joins ----------------------------------
  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Name ;;
  }


#------------ Hidden - empty or duplicated field. Not Useful --------------------
  dimension: attendance_category {
    type: string
    hidden: yes
    sql: ${TABLE}.Attendance_Category ;;
  }
  dimension: attendance_code_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Attendance_Code_Type ;;
  }
  dimension: attendance_key {
    type: number
    hidden: yes
    sql: ${TABLE}.ATTENDANCE_KEY ;;
  }
  dimension: attendance_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Attendance_Sort_Sequence ;;
  }
  dimension: attendance_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Attendance_Status ;;
  }
  dimension: attendance_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Attendance_Type ;;
  }
  dimension: marking_period {
    type: string
    hidden: yes
    sql: ${TABLE}.Marking_Period ;;
  }
  dimension: marking_period_number {
    type: number
    hidden: yes
    sql: ${TABLE}.Marking_Period_Number ;;
  }
  dimension: date_description {
    type: string
    hidden: yes
    sql: ${TABLE}.Date_Description ;;
  }
  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }
  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }
  dimension: period_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Period_Level ;;
  }
  dimension: period_level_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Period_Level_Type ;;
  }
  dimension_group: end {
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
    sql: ${TABLE}.End_Date ;;
  }
  dimension: state_attendance {
    type: string
    hidden: yes
    sql: ${TABLE}.State_Attendance ;;
  }
  dimension: state_attendance_code {
    type: string
    hidden: yes
    sql: ${TABLE}.State_Attendance_Code ;;
  }
}
