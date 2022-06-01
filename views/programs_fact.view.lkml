view: programs_fact {
  sql_table_name: stars.programs_fact ;;
  label: "Programs"
  dimension: batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension: communication_method_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.COMMUNICATION_METHOD_DESC ;;
  }

  dimension: district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.DISTRICT_ID ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: enroll_location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.ENROLL_LOCATION_KEY ;;
  }

  dimension: entry_reason_key {
    type: number
    hidden: yes
    sql: ${TABLE}.ENTRY_REASON_KEY ;;
  }

  dimension: exit_reason_key {
    type: number
    hidden: yes
    sql: ${TABLE}.EXIT_REASON_KEY ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.LOCATION_ID ;;
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

  dimension_group: orig_start {
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
    sql: ${TABLE}.ORIG_START_DATE ;;
  }

  dimension: outside_regular_session {
    type: string
    hidden: yes
    sql: ${TABLE}.OUTSIDE_REGULAR_SESSION_IND ;;
  }

  dimension: parent_permission_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PARENT_PERMISSION_CD ;;
  }

  dimension: parent_permission_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PARENT_PERMISSION_DESC ;;
  }

  dimension: part_info_code {
    type: string
    label: "Program Participation Info Code"
    sql: ${TABLE}.PART_INFO_CODE ;;
  }

  dimension: part_info_desc {
    type: string
    label: "Program Participation Info"
    sql: ${TABLE}.PART_INFO_DESC ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: pgm_elig1_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG1_CD ;;
  }

  dimension: pgm_elig1_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG1_DESC ;;
  }

  dimension: pgm_elig2_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG2_CD ;;
  }

  dimension: pgm_elig2_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG2_DESC ;;
  }

  dimension: pgm_elig3_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG3_CD ;;
  }

  dimension: pgm_elig3_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG3_DESC ;;
  }

  dimension: pgm_elig4_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG4_CD ;;
  }

  dimension: pgm_elig4_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG4_DESC ;;
  }

  dimension: pgm_elig5_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG5_CD ;;
  }

  dimension: pgm_elig5_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG5_DESC ;;
  }

  dimension: pgm_elig6_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG6_CD ;;
  }

  dimension: pgm_elig6_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_ELIG6_DESC ;;
  }

  dimension: pgm_location_district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PGM_LOCATION_DISTRICT_KEY ;;
  }

  dimension: pgm_provider_type_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_PROVIDER_TYPE_CD ;;
  }

  dimension: pgm_provider_type_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_PROVIDER_TYPE_DESC ;;
  }

  dimension: pgm_session_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_SESSION_CD ;;
  }

  dimension: pgm_session_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_SESSION_DESC ;;
  }

  dimension: pgm_student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.PGM_STUDENT_ID ;;
  }

  dimension: plan_execution_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: primary_setting_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PRIMARY_SETTING_CD ;;
  }

  dimension: program {
    type: string
    sql: ${TABLE}.Program ;;
  }

  dimension: program_comment {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_COMMENT ;;
  }

  dimension: program_cycle_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_CYCLE_CD ;;
  }

  dimension: program_cycle_desc {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_CYCLE_DESC ;;
  }

  dimension: program_duration {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_DURATION ;;
  }

  dimension_group: program_end {
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
    sql: ${TABLE}.PROGRAM_END_DATE ;;
  }

  dimension: program_frequency {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAM_FREQUENCY ;;
  }

  dimension: program_code {
    type: string
    sql: ${TABLE}."Program ID" ;;
  }

  dimension: program_intensity {
    type: string
    sql: ${TABLE}.PROGRAM_INTENSITY ;;
  }

  dimension: program_participation_information_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Program Participation Information Code" ;;
  }

  dimension: program_provider_nm {
    type: string
    hidden: yes
    sql: ${TABLE}.PROGRAM_PROVIDER_NM ;;
  }

  dimension_group: program_start {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.PROGRAM_START_DATE ;;
  }

  dimension: programs_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PROGRAMS_KEY ;;
  }

  dimension: reasonsfact_key {
    type: number
    hidden: yes
    sql: ${TABLE}.REASONSFACT_KEY ;;
  }

  dimension: reporting_date_period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.REPORTING_DATE_PERIOD_KEY ;;
  }

  dimension: row_indicator {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension_group: school_year_end {
    type: time
    timeframes: [
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

  measure: count {
    type: count
    drill_fields: []
  }
}
