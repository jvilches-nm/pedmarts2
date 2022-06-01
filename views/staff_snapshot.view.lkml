view: staff_snapshot {
  sql_table_name: stars.staff_snapshot ;;

  dimension: alt_contract_days {
    type: number
    sql: ${TABLE}.ALT_CONTRACT_DAYS ;;
  }

  dimension: baccalaureate_degree_institution {
    type: string
    sql: ${TABLE}.Baccalaureate_Degree_Institution ;;
  }

  dimension: baccalaureate_degree_institution_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Baccalaureate_Degree_Institution_Code ;;
  }

  dimension: batch_id {
    type: number
    hidden: yes
    sql: ${TABLE}.BATCH_ID ;;
  }

  dimension_group: curr_svc {
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
    sql: ${TABLE}.CURR_SVC_DATE ;;
  }

  dimension: degree_earned {
    type: string
    sql: ${TABLE}.DEGREE_EARNED ;;
  }

  dimension: degree_earned_code {
    type: string
    hidden: yes
    sql: ${TABLE}.DEGREE_EARNED_CODE ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: emp_elig_verification {
    type: string
    sql: ${TABLE}.EMP_ELIG_VERIFICATION ;;
  }

  dimension: emp_elig_verify_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.EMP_ELIG_VERIFY_CD ;;
  }

  dimension: ethnic_code {
    type: string
    hidden: yes
    sql: ${TABLE}.ETHNIC_CODE ;;
  }

  dimension: ethnic_desc {
    type: string
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension_group: exit {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EXIT_DATE ;;
  }

  dimension: highest_degree_institution {
    type: string
    sql: ${TABLE}.Highest_Degree_Institution ;;
  }

  dimension: highest_degree_institution_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Highest_Degree_Institution_Code ;;
  }

  dimension: hispanic {
    type: string
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: level_aggr {
    type: string
    sql: ${TABLE}.LEVEL_AGGR ;;
  }

  dimension: local_contract {
    type: string
    sql: ${TABLE}.LOCAL_CONTRACT ;;
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

  dimension: multiracial {
    type: string
    sql: ${TABLE}.MULTIRACIAL_IND ;;
  }

  dimension_group: orig_hire {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ORIG_HIRE_DATE ;;
  }

  dimension: pay_step_level {
    type: number
    sql: ${TABLE}.PAY_STEP_LEVEL ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: plan_execution_id {
    type: number
    hidden: yes
    sql: ${TABLE}.PLAN_EXECUTION_ID ;;
  }

  dimension: primary_loc_cd {
    type: string
    hidden: yes
    sql: ${TABLE}.PRIMARY_LOC_CD ;;
  }

  dimension: primary_loc_nm {
    type: string
    sql: ${TABLE}.PRIMARY_LOC_NM ;;
  }

  dimension: qualification_stat {
    type: string
    sql: ${TABLE}.QUALIFICATION_STAT ;;
  }

  dimension: race1_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE1_CODE ;;
  }

  dimension: race1 {
    type: string
    sql: ${TABLE}.RACE1_LONG_DESC ;;
  }

  dimension: race2_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race2 {
    type: string
    sql: ${TABLE}.RACE2_LONG_DESC ;;
  }

  dimension: race3_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race3 {
    type: string
    sql: ${TABLE}.RACE3_LONG_DESC ;;
  }

  dimension: race4_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race4 {
    type: string
    sql: ${TABLE}.RACE4_LONG_DESC ;;
  }

  dimension: race5_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: race5 {
    type: string
    sql: ${TABLE}.RACE5_LONG_DESC ;;
  }

  dimension: row_indicator {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension: rptg_race_ethnicity_desc {
    type: string
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
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



  dimension_group: snapshot {
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
    sql: ${TABLE}.SNAPSHOT_DATE ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.SCHOOL_YEAR)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.SCHOOL_YEAR) as varchar) ;;
  }

  dimension: snapshot_period {
    type: string
    label: "Snapshot Period"
    order_by_field: snapshot_period_order
    description: "Defines the count for which the snapshot was taken, for example 40 Day, 80 Day, 120 Day, End of Year"
    sql:  case when month(${TABLE}.Snapshot_Date)=10 then '40 Day'
               when month(${TABLE}.Snapshot_Date)=12 then '80 Day'
               when month(${TABLE}.Snapshot_Date)=3 then '120 Day'
               when month(${TABLE}.Snapshot_date)=6 then 'End of Year'
               else 'Unknown' end;;
  }

  dimension: snapshot_period_order {
    type: number
    hidden: yes
    sql: case when month(${TABLE}.Snapshot_Date)=10 then 1
               when month(${TABLE}.Snapshot_Date)=12 then 2
               when month(${TABLE}.Snapshot_Date)=3 then 3
               when month(${TABLE}.Snapshot_date)=6 then 4
               else 5 end;;
  }

  dimension: staff_base_zip {
    type: string
    sql: ${TABLE}.STAFF_BASE_ZIP ;;
  }

  dimension_group: staff_birthdate {
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
    sql: ${TABLE}.STAFF_BIRTHDATE ;;
  }

  dimension: staff_city {
    type: string
    sql: ${TABLE}.STAFF_CITY ;;
  }

  dimension: staff_email_addr {
    type: string
    hidden: yes
    sql: ${TABLE}.STAFF_EMAIL_ADDR ;;
  }

  dimension: staff_name_first {
    type: string
    sql: ${TABLE}.STAFF_FIRST_NM ;;
  }

  dimension: staff_gender {
    type: string
    sql: ${TABLE}.STAFF_GENDER ;;
  }

  dimension: staff_gender_code {
    type: string
    hidden: yes
    sql: ${TABLE}.STAFF_GENDER_CODE ;;
  }

  dimension: staff_id {
    type: string
    hidden: yes
    sql: ${TABLE}.STAFF_ID ;;
  }

  dimension: staff_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STAFF_KEY ;;
  }

  dimension: staff_name_last {
    type: string
    sql: ${TABLE}.STAFF_LAST_NM ;;
  }

  dimension: staff_name_middle {
    type: string
    sql: ${TABLE}.STAFF_MID_INIT ;;
  }

  dimension: staff_name_full {
    type: string
    sql: ${TABLE}.STAFF_NAME ;;
  }

  dimension: staff_qualif_desc {
    type: string
    sql: ${TABLE}.STAFF_QUALIF_DESC ;;
  }

  dimension: staff_snapshot_key {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.STAFF_SNAPSHOT_KEY ;;
  }

  dimension: staff_state {
    type: string
    sql: ${TABLE}.STAFF_STATE ;;
  }

  dimension: subgroup_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SUBGROUP_CODE ;;
  }

  dimension: subgroup {
    type: string
    sql: ${TABLE}.SUBGROUP_LONG_DESC ;;
  }

  dimension: supervisor {
    type: string
    sql: ${TABLE}.SUPERVISOR ;;
  }

  dimension_group: tenure {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.TENURE_DATE ;;
  }

  dimension: termination_code {
    type: string
    hidden: yes
    sql: ${TABLE}.TERMINATION_CODE ;;
  }

  dimension: termination_desc {
    type: string
    sql: ${TABLE}.TERMINATION_DESC ;;
  }

  measure: total_annual_salary {
    type: sum
    sql: ${TABLE}.TOT_ANNUAL_SALARY ;;
  }

  dimension: years_district {
    type: number
    sql: ${TABLE}.YEARS_DISTRICT ;;
  }

  dimension: years_service {
    type: number
    sql: ${TABLE}.YEARS_SERVICE ;;
  }

  measure: staff_race_indian_eduction_count {
    type: sum
    sql: case when ${race1_code}='I' then 1
              when ${race2_code}='I' then 1
              when ${race3_code}='I' then 1
              when ${race4_code}='I' then 1
              when ${race5_code}='I' then 1
              else 0 end;;
  }
  dimension: staff_race_indian_education {
    type: string
    sql: case when ${race1_code}='I' then 'American Indian/Alaskan Native'
              when ${race2_code}='I' then 'American Indian/Alaskan Native'
              when ${race3_code}='I' then 'American Indian/Alaskan Native'
              when ${race4_code}='I' then 'American Indian/Alaskan Native'
              when ${race5_code}='I' then 'American Indian/Alaskan Native'
              else ${rptg_race_ethnicity_desc} end;;
  }

  measure: count {
    type: count
    drill_fields: [staff_name_full]
  }
}
