view: attendance_summary {
  sql_table_name: stars.attendance_summary ;;

  dimension: batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BATCH_ID ;;
  }

  measure: days_absent_total {
    type: sum
    label: "Days Absent Total"
    sql: ${TABLE}.DAYS_ABSENT_TOTAL ;;
  }

  measure: days_absent_unexc {
    type: sum
    label: "Days Absent Unexcused"
    sql: ${TABLE}.DAYS_ABSENT_UNEXC ;;
  }

  measure: days_enrolled {
    type: sum
    label: "Days Enrolled"
    sql: ${TABLE}.DAYS_ENROLLED ;;
  }

  measure: days_present {
    type: sum
    label: "Days Present"
    sql: ${TABLE}.DAYS_PRESENT ;;
  }

  measure: days_tardy {
    type: sum
    label: "Days Tardy"
    sql: ${TABLE}.DAYS_TARDY ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: fte_percent {
    type: number
    hidden: yes
    label: "FTE Percentage"
    sql: ${TABLE}.FTE_PERCENT ;;
  }

  dimension: grade_lvl_cd {
    type: string
    hidden: yes
    label: "Grade Level Code"
    sql: ${TABLE}.GRADE_LVL_CD ;;
  }

  dimension: grade_lvl_desc {
    type: string
    hidden: yes
    label: "Grade Level Description"
    sql: ${TABLE}.GRADE_LVL_DESC ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  measure: max_consec_days_absent_nbr {
    type: sum
    label: "Maximum Consecutive Days Absent"
    sql: ${TABLE}.MAX_CONSEC_DAYS_ABSENT_NBR ;;
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

  dimension: period_ed_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_ED_KEY ;;
  }

  dimension_group: period_end_dt {
    type: time
    timeframes: [
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
    hidden: yes
    sql: ${TABLE}.PERIOD_SD_KEY ;;
  }

  dimension_group: period_start_dt {
    type: time
    timeframes: [
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
    hidden: yes
    sql: ${TABLE}.PK_PERIOD_ED_KEY_IND ;;
  }

  dimension: plan_execution_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: row_indicator {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  measure: sched_period_attend_nbr {
    type: sum
    label: "Scheduled Periods Attended"
    sql: ${TABLE}.SCHED_PERIOD_ATTEND_NBR ;;
  }

  measure: sched_period_excused_nbr {
    type: sum
    label: "Scheduled Periods Excused"
    sql: ${TABLE}.SCHED_PERIOD_EXCUSED_NBR ;;
  }

  measure: sched_period_nbr {
    type: sum
    label: "Scheduled Periods"
    sql: ${TABLE}.SCHED_PERIOD_NBR ;;
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

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}.period_end_dt)=10 then '40 Day'
               when month(${TABLE}.period_end_dt)=12 then '80 Day'
               when month(${TABLE}.period_end_dt)=3 then '120 Day'
               when month(${TABLE}.period_end_dt)=6 then 'End of Year'
               else 'Unknown' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}.period_end_dt)=10 then 1
               when month(${TABLE}.period_end_dt)=12 then 2
               when month(${TABLE}.period_end_dt)=3 then 3
               when month(${TABLE}.period_end_dt)=6 then 4
               else 5 end;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
