view: student_events {
  sql_table_name: stars.student_events ;;

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

  dimension_group: event_effective {
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
    sql: ${TABLE}.Event_Effective_Date ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}.Event_Type ;;
  }

  dimension: event_type_category {
    type: string
    sql: ${TABLE}.Event_Type_Category ;;
  }

  dimension: event_type_code {
    type: string
    sql: ${TABLE}.Event_Type_Code ;;
  }

  dimension: event_type_key_for_event_type_code {
    type: number
    sql: ${TABLE}.EVENT_TYPE_KEY_for_event_type_code ;;
  }

  dimension_group: last_status {
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
    sql: ${TABLE}.Last_Status_Date ;;
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

  dimension_group: modified_date_se_events {
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
    sql: ${TABLE}.modified_date_SE_EVENTS ;;
  }

  dimension: non_compliance_reason {
    type: string
    sql: ${TABLE}.NonCompliance_Reason ;;
  }

  dimension: non_compliance_reason_code {
    type: string
    sql: ${TABLE}.NonCompliance_Reason_Code ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: reason_category {
    type: string
    sql: ${TABLE}.Reason_Category ;;
  }

  dimension: reason_code {
    type: string
    sql: ${TABLE}.Reason_Code ;;
  }

  dimension: reason_type {
    type: string
    sql: ${TABLE}.Reason_Type ;;
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

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: student_loc_key {
    type: number
    sql: ${TABLE}.Student_Loc_Key ;;
  }

  dimension: student_status {
    type: string
    sql: ${TABLE}.Student_Status ;;
  }

  dimension: student_status_code {
    type: string
    sql: ${TABLE}.Student_Status_Code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
