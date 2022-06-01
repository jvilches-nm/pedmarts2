view: staff_assignment_snapshot {
  sql_table_name: stars.staff_assignment_snapshot ;;

  dimension: annual_salary {
    type: number
    sql: ${TABLE}.Annual_Salary ;;
  }

  dimension: assignment {
    type: string
    sql: ${TABLE}.Assignment ;;
  }

  dimension: assignment_category {
    type: string
    sql: ${TABLE}.Assignment_Category ;;
  }

  dimension: assignment_code {
    type: string
    sql: ${TABLE}.Assignment_Code ;;
  }

  dimension_group: assignment_date {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Assignment_Date ;;
  }

  dimension: assignment_key_for_assignment_code {
    type: number
    hidden: yes
    sql: ${TABLE}.ASSIGNMENT_KEY_for_assignment_code ;;
  }

  dimension: assignment_qualification {
    type: string
    sql: ${TABLE}.Assignment_Qualification_Indicator ;;
  }

  dimension: assignment_qualification_status {
    type: string
    sql: ${TABLE}.Assignment_Qualification_Status ;;
  }

  dimension: date_description {
    type: string
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

  dimension_group: end {
    type: time
    timeframes: [
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
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: modified_date_period {
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
    sql: ${TABLE}.modified_date_PERIOD ;;
  }

  dimension_group: modified_date_staff_assign_code {
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
    sql: ${TABLE}.modified_date_STAFF_ASSIGN_CODE ;;
  }

  dimension_group: modified_date_staff_assignment {
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
    sql: ${TABLE}.modified_date_STAFF_ASSIGNMENT ;;
  }

  dimension_group: modified_date_staff_snapshot {
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
    sql: ${TABLE}.modified_date_STAFF_SNAPSHOT ;;
  }

  dimension_group: original_hire {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Original_Hire_Date ;;
  }

  dimension: percentage_of_time_assigned {
    type: number
    sql: ${TABLE}.Percentage_of_Time_Assigned ;;
  }

  dimension: period_key_for_assignment_date {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY_for_assignment_date ;;
  }

  dimension: period_key_for_staff_snapshot_date {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY_for_staff_snapshot_date ;;
  }

  dimension: period_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Period_Level ;;
  }

  dimension: primary_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Location_ID ;;
  }

  dimension: primary_location_name {
    type: string
    sql: ${TABLE}.Primary_Location_Name ;;
  }

  dimension_group: school_year_end {
    type: time
    timeframes: [
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
    sql: ${TABLE}.School_Year_Designation ;;
  }

  dimension_group: staff_exit {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Staff_Exit_Date ;;
  }

  dimension: staff_exit_reason {
    type: string
    sql: ${TABLE}.Staff_Exit_Reason ;;
  }

  dimension: staff_exit_reason_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Staff_Exit_Reason_Code ;;
  }

  dimension: staff_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Staff_ID ;;
  }

  dimension: staff_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STAFF_KEY ;;
  }

  dimension: staff_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Staff_Name ;;
  }

  dimension_group: staff_snapshot {
    type: time
    hidden: yes
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Staff_Snapshot_Date ;;
  }

  dimension_group: start {
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

  dimension_group: start_date_current_year {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Start_Date_Current_Year ;;
  }

  dimension: state_district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.State_District_Code ;;
  }

  dimension: state_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.State_Location_ID ;;
  }

  dimension: total_years_of_experience {
    type: number
    sql: ${TABLE}.Total_Years_of_Experience ;;
  }

  dimension: total_years_of_experience_in_district {
    type: number
    sql: ${TABLE}.Total_Years_of_Experience_in_District ;;
  }

  dimension: year_number {
    type: number
    hidden: yes
    sql: ${TABLE}.Year_Number ;;
  }

  measure: count {
    type: count
    drill_fields: [primary_location_name, staff_name]
  }
}
