view: attendance_summary {
  sql_table_name: stars.attendance_summary ;;

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: days_absent_total {
    type: number
    sql: ${TABLE}.DAYS_ABSENT_TOTAL ;;
  }

  dimension: days_absent_unexc {
    type: number
    sql: ${TABLE}.DAYS_ABSENT_UNEXC ;;
  }

  dimension: days_enrolled {
    type: number
    sql: ${TABLE}.DAYS_ENROLLED ;;
  }

  dimension: days_present {
    type: number
    sql: ${TABLE}.DAYS_PRESENT ;;
  }

  dimension: days_tardy {
    type: number
    sql: ${TABLE}.DAYS_TARDY ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: fte_percent {
    type: number
    sql: ${TABLE}.FTE_PERCENT ;;
  }

  dimension: grade_lvl_cd {
    type: string
    sql: ${TABLE}.GRADE_LVL_CD ;;
  }

  dimension: grade_lvl_desc {
    type: string
    sql: ${TABLE}.GRADE_LVL_DESC ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: max_consec_days_absent_nbr {
    type: number
    sql: ${TABLE}.MAX_CONSEC_DAYS_ABSENT_NBR ;;
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

  dimension: period_ed_key {
    type: number
    sql: ${TABLE}.PERIOD_ED_KEY ;;
  }

  dimension_group: period_end_dt {
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
    sql: ${TABLE}.PERIOD_END_DT ;;
  }

  dimension: period_sd_key {
    type: number
    sql: ${TABLE}.PERIOD_SD_KEY ;;
  }

  dimension_group: period_start_dt {
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
    sql: ${TABLE}.PERIOD_START_DT ;;
  }

  dimension: pk_period_ed_key_ind {
    type: string
    sql: ${TABLE}.PK_PERIOD_ED_KEY_IND ;;
  }

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: row_indicator {
    type: string
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension: sched_period_attend_nbr {
    type: number
    sql: ${TABLE}.SCHED_PERIOD_ATTEND_NBR ;;
  }

  dimension: sched_period_excused_nbr {
    type: number
    sql: ${TABLE}.SCHED_PERIOD_EXCUSED_NBR ;;
  }

  dimension: sched_period_nbr {
    type: number
    sql: ${TABLE}.SCHED_PERIOD_NBR ;;
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

  dimension: student_id {
    type: string
    sql: ${TABLE}.STUDENT_ID ;;
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
