view: programs_code {
  sql_table_name: stars.programs_code ;;

  dimension: alt_programs_cat {
    type: string
    sql: ${TABLE}.ALT_PROGRAMS_CAT ;;
  }

  dimension: batch_id {
    type: number
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
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

  dimension: plan_execution_id {
    type: number
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: program_accredn {
    type: string
    sql: ${TABLE}.PROGRAM_ACCREDN ;;
  }

  dimension: program_sponsor_cd {
    type: string
    sql: ${TABLE}.PROGRAM_SPONSOR_CD ;;
  }

  dimension: program_sponsor_desc {
    type: string
    sql: ${TABLE}.PROGRAM_SPONSOR_DESC ;;
  }

  dimension: programs_category {
    type: string
    sql: ${TABLE}.PROGRAMS_CATEGORY ;;
  }

  dimension: programs_code {
    type: string
    sql: ${TABLE}.PROGRAMS_CODE ;;
  }

  dimension: programs_desc {
    type: string
    label: "Programs"
    sql: ${TABLE}.PROGRAMS_DESC ;;
  }

  dimension: programs_key {
    type: number
    sql: ${TABLE}.PROGRAMS_KEY ;;
  }

  dimension: programs_short {
    type: string
    sql: ${TABLE}.PROGRAMS_SHORT ;;
  }

  dimension: programs_type {
    type: string
    sql: ${TABLE}.PROGRAMS_TYPE ;;
  }

  dimension: row_indicator {
    type: string
    sql: ${TABLE}.ROW_INDICATOR ;;
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

  dimension: sort_seq {
    type: number
    sql: ${TABLE}.SORT_SEQ ;;
  }

  dimension: state_program_code {
    type: string
    sql: ${TABLE}.STATE_PROGRAM_CODE ;;
  }

  dimension: state_program_desc {
    type: string
    sql: ${TABLE}.STATE_PROGRAM_DESC ;;
  }

  dimension: technical_program {
    type: string
    sql: ${TABLE}.TECHNICAL_PROGRAM ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
