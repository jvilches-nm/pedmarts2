view: programs_services_fact {
  sql_table_name: stars.programs_services_fact ;;

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: educ_svc_category {
    type: string
    label: "Service Category"
    sql: ${TABLE}.EDUC_SVC_CATEGORY ;;
  }

  dimension: educ_svc_code {
    type: string
    label: "Service Code"
    sql: ${TABLE}.EDUC_SVC_CODE ;;
  }

  dimension: educ_svc_key {
    type: number
    hidden: yes
    sql: ${TABLE}.EDUC_SVC_KEY ;;
  }

  dimension: educ_svc_long_desc {
    type: string
    label: "Service Description"
    sql: ${TABLE}.EDUC_SVC_LONG_DESC ;;
  }

  dimension: educ_svc_short_desc {
    type: string
    label: "Service Type"
    sql: ${TABLE}.EDUC_SVC_SHORT_DESC ;;
  }

  dimension: educ_svc_type {
    type: string
    hidden: yes
    sql: ${TABLE}.EDUC_SVC_TYPE ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.MODIFIED_DATE ;;
  }

  dimension: prim_staff_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PRIM_STAFF_KEY ;;
  }

  dimension: prim_staff_snapshot_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PRIM_STAFF_SNAPSHOT_KEY ;;
  }

  dimension: programs_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAMS_KEY ;;
  }

  dimension: reporting_date_period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.REPORTING_DATE_PERIOD_KEY ;;
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
    sql: ${TABLE}.SCHOOL_YEAR ;;
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

  dimension: svc_cycle_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_CYCLE_CD ;;
  }

  dimension: svc_cycle_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_CYCLE_DESC ;;
  }

  dimension: svc_duration {
    type: number
    label: "Service Duration"
    sql: ${TABLE}.SVC_DURATION ;;
  }

  dimension_group: svc_end {
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
    sql: ${TABLE}.SVC_END_DATE ;;
  }

  dimension: svc_frequency {
    type: number
    label: "Service Frequency"
    sql: ${TABLE}.SVC_FREQUENCY ;;
  }

  dimension: svc_gl_fund_source_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SVC_GL_FUND_SOURCE_KEY ;;
  }

  dimension: svc_location_district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SVC_LOCATION_DISTRICT_KEY ;;
  }

  dimension: svc_location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SVC_LOCATION_KEY ;;
  }

  dimension: svc_part_info_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_PART_INFO_CD ;;
  }

  dimension: svc_part_info_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_PART_INFO_DESC ;;
  }

  dimension: svc_provider_nm {
    type: string
    label: "Service Provider Name"
    sql: ${TABLE}.SVC_PROVIDER_NM ;;
  }

  dimension: svc_provider_type_cd {
    type: string
    label: "Service Provider Type Code"
    sql: ${TABLE}.SVC_PROVIDER_TYPE_CD ;;
  }

  dimension: svc_provider_type_desc {
    type: string
    label: "Service Provider Type"
    sql: ${TABLE}.SVC_PROVIDER_TYPE_DESC ;;
  }

  dimension: svc_setting_cd {
    type: string
    label: "Service Setting"
    sql: coalesce(${TABLE}.SVC_SETTING_CD, ${TABLE}.SVC_SETTING_TYPE_CD) ;;
  }

  dimension: svc_setting_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_SETTING_DESC ;;
  }

  dimension: svc_setting_type_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_SETTING_TYPE_CD ;;
  }

  dimension: svc_setting_type_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.SVC_SETTING_TYPE_DESC ;;
  }

  dimension_group: svc_start {
    type: time
    label: "Service"
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SVC_START_DATE ;;
  }

  dimension: svc_start_date_period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.SVC_START_DATE_PERIOD_KEY ;;
  }

  dimension: tot_svc_units {
    type: number
    hidden: yes
    sql: ${TABLE}.TOT_SVC_UNITS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
