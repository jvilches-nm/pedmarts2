view: staff_development_activity {
  sql_table_name: stars.staff_development_activity ;;

  dimension: activity_fmt_code {
    type: string
    sql: ${TABLE}.ACTIVITY_FMT_CODE ;;
  }

  dimension: activity_fmt_desc {
    type: string
    sql: ${TABLE}.ACTIVITY_FMT_DESC ;;
  }

  dimension: activity_hours {
    type: number
    sql: ${TABLE}.ACTIVITY_HOURS ;;
  }

  dimension: activity_lang_cd {
    type: string
    label: "Activity Language Code"
    sql: ${TABLE}.ACTIVITY_LANG_CD ;;
  }

  dimension: activity_lang_desc {
    type: string
    label: "Activity Language"
    sql: ${TABLE}.ACTIVITY_LANG_DESC ;;
  }

  dimension: actvty_sort_seq {
    type: number
    hidden: yes
    sql: ${TABLE}.ACTVTY_SORT_SEQ ;;
  }

  dimension_group: completion {
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
    sql: ${TABLE}.COMPLETION_DATE ;;
  }

  dimension: credit_type_code {
    type: string
    sql: ${TABLE}.CREDIT_TYPE_CODE ;;
  }

  dimension: credit_type_desc {
    type: string
    sql: ${TABLE}.CREDIT_TYPE_DESC ;;
  }

  measure: credits_earned {
    type: sum
    label: "Stipend Amount"
    sql: ${TABLE}.CREDITS_EARNED ;;
  }

  dimension: dev_activity_cat {
    type: string
    label: "Activity Category"
    sql: ${TABLE}.DEV_ACTIVITY_CAT ;;
  }

  dimension: dev_activity_code {
    type: string
    label: "Activity Code"
    sql: ${TABLE}.DEV_ACTIVITY_CODE ;;
  }

  dimension: dev_activity_cost {
    type: number
    label: "Activity Cost"
    sql: ${TABLE}.DEV_ACTIVITY_COST ;;
  }

  dimension: dev_activity_desc {
    type: string
    label: "Activity Description"
    sql: ${TABLE}.DEV_ACTIVITY_DESC ;;
  }

  dimension: dev_activity_key {
    type: number
    label: "Activity Key"
    sql: ${TABLE}.DEV_ACTIVITY_KEY ;;
  }

  dimension: dev_activity_name {
    type: string
    label: "Activity Name"
    sql: ${TABLE}.DEV_ACTIVITY_NAME ;;
  }

  dimension: dev_subject_code {
    type: string
    sql: ${TABLE}.DEV_SUBJECT_CODE ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension_group: entry {
    type: time
    label: "Activity Start Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ENTRY_DATE ;;
  }

  dimension_group: expiration {
    type: time
    label: "Activity Expiration Date"
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EXPIRATION_DATE ;;
  }

  dimension: inst_medium_code {
    type: string
    hidden: yes
    sql: ${TABLE}.INST_MEDIUM_CODE ;;
  }

  dimension: inst_medium_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.INST_MEDIUM_DESC ;;
  }

  dimension_group: modified {
    type: time
    label: "Modified Date"
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

  dimension: objctv_desc {
    type: string
    sql: ${TABLE}.OBJCTV_DESC ;;
  }

  dimension: part_level_code {
    type: string
    sql: ${TABLE}.PART_LEVEL_CODE ;;
  }

  dimension: part_level_desc {
    type: string
    sql: ${TABLE}.PART_LEVEL_DESC ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: provider_name {
    type: string
    sql: ${TABLE}.PROVIDER_NAME ;;
  }

  dimension: purpose_code {
    type: string
    sql: ${TABLE}.PURPOSE_CODE ;;
  }

  dimension: purpose_desc {
    type: string
    sql: ${TABLE}.PURPOSE_DESC ;;
  }

  dimension: relevance_code {
    type: string
    sql: ${TABLE}.RELEVANCE_CODE ;;
  }

  dimension: relevance_desc {
    type: string
    sql: ${TABLE}.RELEVANCE_DESC ;;
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

  dimension: staff_key {
    type: number
    sql: ${TABLE}.STAFF_KEY ;;
  }

  dimension: state_actvty_code {
    type: string
    sql: ${TABLE}.STATE_ACTVTY_CODE ;;
  }

  dimension: state_actvty_desc {
    type: string
    sql: ${TABLE}.STATE_ACTVTY_DESC ;;
  }

  dimension: subject_area_desc {
    type: string
    sql: ${TABLE}.SUBJECT_AREA_DESC ;;
  }

  dimension: tuition_funded_ind {
    type: string
    sql: ${TABLE}.TUITION_FUNDED_IND ;;
  }

  dimension_group: withdrawal {
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
    sql: ${TABLE}.WITHDRAWAL_DATE ;;
  }

  dimension: yr_lvl_staff_snapshot_key {
    type: number
    sql: ${TABLE}.YR_LVL_STAFF_SNAPSHOT_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: [dev_activity_name, provider_name]
  }
}
