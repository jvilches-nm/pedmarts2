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

  dimension: device_access {
    type: string
    sql: ${TABLE}.DEVICE_ACCESS_DESC ;;
  }

  dimension: device_provider_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.DEVICE_PROVIDER_CD ;;
  }

  dimension: device_provider {
    type: string
    sql: ${TABLE}.DEVICE_PROVIDER_DESC ;;
  }

  dimension: device_sufficiency {
    type: string
    sql: ${TABLE}.DEVICE_SUFFICIENCY_IND ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: internet_access_barrier_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.INTERNET_ACCESS_BARRIER_CD ;;
  }

  dimension: internet_access_barrier {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_BARRIER_DESC ;;
  }

  dimension: internet_access {
    type: string
    description: "Student has internet access - Yes/No"
    sql: ${TABLE}.INTERNET_ACCESS_IND ;;
  }

  dimension: internet_access_type_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.INTERNET_ACCESS_TYPE_CD ;;
  }

  dimension: internet_access_type {
    type: string
    sql: ${TABLE}.INTERNET_ACCESS_TYPE_DESC ;;
  }

  dimension: internet_perf_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.INTERNET_PERF_CD ;;
  }

  dimension: internet_performance {
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
    hidden: yes
    sql: ${TABLE}.MODIFIED_INDICATOR ;;
  }

  dimension: plan_execution_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: prim_learn_device_type_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PRIM_LEARN_DEVICE_TYPE_CD ;;
  }

  dimension: primary_learning_device_type {
    type: string
    sql: ${TABLE}.PRIM_LEARN_DEVICE_TYPE_DESC ;;
  }

  dimension: reporting_date_period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.REPORTING_DATE_PERIOD_KEY ;;
  }

  dimension: school_provided_device {
    type: string
    description: "Student has a school-provided device - Yes/No"
    sql: ${TABLE}.SCHOOL_PROVIDED_DEVICE_IND ;;
  }

  dimension: school_year_end_date {
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
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: adequate_internet_access {
    type: string
    sql: case when ${internet_access}='Yes' and ${internet_perf_cd}='02' then 'No'
              when ${internet_access}='Yes' and ${internet_perf_cd}='03' then 'No'
              else 'Yes' end ;;
  }

  dimension: district_provided_device {
    type: string
    sql: case when ${prim_learn_device_type_cd}='10' then 'No'
      else 'Yes' end ;;
  }

  measure: no_internet_access_count {
    type: sum
    sql: case when ${internet_access}='No' then 1 else 0 end;;
  }

  measure: inadequate_internet_access_count {
    type: sum
    sql: case when ${internet_access}='Yes' and ${internet_perf_cd}='02' then 1
              when ${internet_access}='Yes' and ${internet_perf_cd}='03' then 1
              else 0 end ;;
  }

  measure: no_district_provided_device_count {
    type: sum
    sql: case when ${prim_learn_device_type_cd}='10' then 1
              else 0 end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
