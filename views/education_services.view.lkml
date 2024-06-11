view: education_services {
  sql_table_name: stars.education_services ;;

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: educ_svc_category {
    type: string
    sql: ${TABLE}.EDUC_SVC_CATEGORY ;;
  }

  dimension: educ_svc_code {
    type: string
    sql: ${TABLE}.EDUC_SVC_CODE ;;
  }

  dimension: educ_svc_long_desc {
    type: string
    sql: ${TABLE}.EDUC_SVC_LONG_DESC ;;
  }

  dimension: educ_svc_short_desc {
    type: string
    sql: ${TABLE}.EDUC_SVC_SHORT_DESC ;;
  }

  dimension: educ_svc_type {
    type: string
    sql: ${TABLE}.EDUC_SVC_TYPE ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: programs_key {
    type: number
    sql: ${TABLE}.PROGRAMS_KEY ;;
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
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: se_services_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SE_SERVICES_KEY ;;
  }

  dimension: stud_snapshot_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUD_SNAPSHOT_KEY ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension_group: svc_end {
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
    sql: ${TABLE}.SVC_END_DATE ;;
  }

  dimension_group: svc_start {
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
    sql: ${TABLE}.SVC_START_DATE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
