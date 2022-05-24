view: period {
  sql_table_name: stars.period ;;

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: collection_cd {
    type: string
    sql: ${TABLE}.COLLECTION_CD ;;
  }

  dimension: dashboard_ind {
    type: string
    sql: ${TABLE}.DASHBOARD_IND ;;
  }

  dimension: date_desc {
    type: string
    sql: ${TABLE}.DATE_DESC ;;
  }

  dimension: day_name {
    type: string
    sql: ${TABLE}.DAY_NAME ;;
  }

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.DAY_OF_WEEK ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: fiscal_period_num {
    type: number
    sql: ${TABLE}.FISCAL_PERIOD_NUM ;;
  }

  dimension_group: fiscal_year {
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
    sql: ${TABLE}.FISCAL_YEAR ;;
  }

  dimension: marking_period {
    type: string
    sql: ${TABLE}.MARKING_PERIOD ;;
  }

  dimension: marking_period_num {
    type: number
    sql: ${TABLE}.MARKING_PERIOD_NUM ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.MODIFIED_DATE ;;
  }

  dimension: modified_indicator {
    type: string
    sql: ${TABLE}.MODIFIED_INDICATOR ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.MONTH_NAME ;;
  }

  dimension: month_number {
    type: number
    sql: ${TABLE}.MONTH_NUMBER ;;
  }

  dimension_group: period_end {
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
    sql: ${TABLE}.PERIOD_END_DATE ;;
  }

  dimension: period_key {
    type: number
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: period_level {
    type: string
    sql: ${TABLE}.PERIOD_LEVEL ;;
  }

  dimension: period_level_desc {
    type: string
    sql: ${TABLE}.PERIOD_LEVEL_DESC ;;
  }

  dimension: period_long_desc {
    type: string
    sql: ${TABLE}.PERIOD_LONG_DESC ;;
  }

  dimension: period_lvl_type {
    type: string
    sql: ${TABLE}.PERIOD_LVL_TYPE ;;
  }

  dimension: period_short_desc {
    type: string
    sql: ${TABLE}.PERIOD_SHORT_DESC ;;
  }

  dimension_group: period_start {
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
    sql: ${TABLE}.PERIOD_START_DATE ;;
  }

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: report_school_year {
    type: string
    sql: ${TABLE}.REPORT_SCHOOL_YEAR ;;
  }

  dimension: row_indicator {
    type: string
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension_group: school_month {
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
    sql: ${TABLE}.SCHOOL_MONTH ;;
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

  dimension: sort_seq {
    type: number
    sql: ${TABLE}.SORT_SEQ ;;
  }

  dimension: week_number {
    type: number
    sql: ${TABLE}.WEEK_NUMBER ;;
  }

  dimension: year_number {
    type: number
    sql: ${TABLE}.YEAR_NUMBER ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, day_name]
  }
}
