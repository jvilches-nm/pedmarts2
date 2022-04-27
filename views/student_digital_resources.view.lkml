view: student_digital_resources {
  sql_table_name: stars.student_digital_resources ;;

  dimension: batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: device_access_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.DEVICE_ACCESS_CD ;;
  }

  dimension: device_access_desc {
    type: string
    sql: ${TABLE}.DEVICE_ACCESS_DESC ;;
  }

  dimension: device_provider_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.DEVICE_PROVIDER_CD ;;
  }

  dimension: device_provider_desc {
    type: string
    sql: ${TABLE}.DEVICE_PROVIDER_DESC ;;
  }

  dimension: device_sufficiency_ind {
    type: string
    sql: ${TABLE}.DEVICE_SUFFICIENCY_IND ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: internet_access_barrier_cd {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_BARRIER_CD ;;
  }

  dimension: internet_access_barrier_desc {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_BARRIER_DESC ;;
  }

  dimension: internet_access_ind {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_IND ;;
  }

  dimension: internet_access_type_cd {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_TYPE_CD ;;
  }

  dimension: internet_access_type_desc {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_TYPE_DESC ;;
  }

  dimension: internet_perf_cd {
    type: string
    sql: ${TABLE}.INTERNET_PERF_CD ;;
  }

  dimension: internet_perf_desc {
    type: string
    sql: ${TABLE}.INTERNET_PERF_DESC ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
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

  dimension: modified_indicator {
    type: string
    sql: ${TABLE}.MODIFIED_INDICATOR ;;
  }

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: prim_learn_device_type_cd {
    type: string
    sql: ${TABLE}.PRIM_LEARN_DEVICE_TYPE_CD ;;
  }

  dimension: prim_learn_device_type_desc {
    type: string
    sql: ${TABLE}.PRIM_LEARN_DEVICE_TYPE_DESC ;;
  }

  dimension: reporting_date_period_key {
    type: number
    sql: ${TABLE}.REPORTING_DATE_PERIOD_KEY ;;
  }

  dimension: school_provided_device_ind {
    type: string
    sql: ${TABLE}.SCHOOL_PROVIDED_DEVICE_IND ;;
  }

  dimension: school_year_date {
    type: date
    hidden: yes
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.SCHOOL_YEAR)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.SCHOOL_YEAR) as varchar) ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
