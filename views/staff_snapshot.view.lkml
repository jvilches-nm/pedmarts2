view: staff_snapshot {
  sql_table_name: stars.staff_snapshot ;;

  dimension: alt_contract_days {
    type: number
    hidden: yes
    sql: ${TABLE}.ALT_CONTRACT_DAYS ;;
  }

  dimension: baccalaureate_degree_institution {
    type: string
    description: "Institution at which a baccalaureate degree was earned."
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
    label: "Current School Year Service Start"
    description: "Staff member's start date for the current school year"
    timeframes: [
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
    label: "Highest Degree Earned"
    description: "Highest degree earned by the staff member: Doctorate / Educational Specialist / Masters / Bachelors / Assosciate / Non-Degree"
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
    label: "Employment Eligibility Verification"
    description: "Vertication of employment eligibility (if applicable): J1 VISA / Temporary Work Visa"
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
    hidden: yes
    sql: ${TABLE}.ETHNIC_DESC ;;
  }

  dimension_group: exit {
    type: time
    description: "Date teacher exited"
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
    description: "Institution at which the highest level degree was awarded."
    sql: ${TABLE}.Highest_Degree_Institution ;;
  }

  dimension: highest_degree_institution_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Highest_Degree_Institution_Code ;;
  }

  dimension: hispanic {
    type: string
    description: "Staff member is hispanic - Yes/No"
    sql: ${TABLE}.HISPANIC_IND ;;
  }

  dimension: level_aggr {
    type: string
    hidden: yes
    sql: ${TABLE}.LEVEL_AGGR ;;
  }

  dimension: local_contract {
    type: string
    label: "National Certified"
    description: "Teacher is national board certified: Y/N"
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
    description: "Staff member has chosen more than one race: Yes/No"
    sql: ${TABLE}.MULTIRACIAL_IND ;;
  }

  dimension_group: orig_hire {
    type: time
    label: "Original Hire"
    description: "Original hire date"
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
    hidden: yes
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
    hidden: yes
    sql: ${TABLE}.PRIMARY_LOC_NM ;;
  }

  dimension: qualification_stat {
    type: string
    hidden: yes
    sql: ${TABLE}.QUALIFICATION_STAT ;;
  }

  dimension: race1_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE1_CODE ;;
  }

  dimension: race1 {
    type: string
    description: "First race selection"
    sql: ${TABLE}.RACE1_LONG_DESC ;;
  }

  dimension: race2_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE2_CODE ;;
  }

  dimension: race2 {
    type: string
    description: "Second race selection"
    sql: ${TABLE}.RACE2_LONG_DESC ;;
  }

  dimension: race3_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE3_CODE ;;
  }

  dimension: race3 {
    type: string
    description: "Third race selection"
    sql: ${TABLE}.RACE3_LONG_DESC ;;
  }

  dimension: race4_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE4_CODE ;;
  }

  dimension: race4 {
    type: string
    description: "Fourth race selection"
    sql: ${TABLE}.RACE4_LONG_DESC ;;
  }

  dimension: race5_code {
    type: string
    hidden: yes
    sql: ${TABLE}.RACE5_CODE ;;
  }

  dimension: race5 {
    type: string
    description: "Fifth race selection"
    sql: ${TABLE}.RACE5_LONG_DESC ;;
  }

  dimension: row_indicator {
    type: string
    hidden: yes
    sql: ${TABLE}.ROW_INDICATOR ;;
  }

  dimension: rptg_race_ethnicity_desc {
    type: string
    label: "Race/Ethnicity Derived"
    description: "Derived race/ethnicity for federal reporting"
    sql: ${TABLE}.RPTG_RACE_ETHNICITY_DESC ;;
  }

  dimension_group: school_year_end {
    type: time
    hidden: yes
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
    hidden: yes
    sql: cast(YEAR(${TABLE}.SCHOOL_YEAR)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.SCHOOL_YEAR) as varchar) ;;
  }

  dimension: snapshot_period {
    type: string
    hidden: yes
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
    hidden: yes
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

  dimension: staff_age {
    type: number
    description: "Staff age at the time of the snapshot."
    sql: CONVERT(INT,DATEDIFF(day,${TABLE}.staff_birthdate,${TABLE}.Snapshot_Date))/365  ;;
  }

  dimension: staff_city {
    type: string
    hidden: yes
    sql: ${TABLE}.STAFF_CITY ;;
  }

  dimension: staff_email_addr {
    type: string
    hidden: yes
    sql: ${TABLE}.STAFF_EMAIL_ADDR ;;
  }

  dimension: staff_name_first {
    type: string
    description: "Staff first name"
    sql: ${TABLE}.STAFF_FIRST_NM ;;
  }

  dimension: staff_gender {
    type: string
    label: "Gender"
    description: "Staff gender: Male/Female"
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
    description: "Staff last name"
    sql: ${TABLE}.STAFF_LAST_NM ;;
  }

  dimension: staff_name_middle {
    type: string
    description: "Staff middle initial"
    sql: ${TABLE}.STAFF_MID_INIT ;;
  }

  dimension: staff_name_full {
    type: string
    description: "Staff name: last, first"
    sql: ${TABLE}.STAFF_NAME ;;
  }

  dimension: staff_qualif_desc {
    type: string
    label: "Staff Qualification"
    description: "Qualification status of the staff member: Certified Personnel / Non-certified Personnel / Substitute Teacher (Long Term) / Substitute Teacher (Short Term) / Contracted Related Service Provider"
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
    hidden: yes
    sql: ${TABLE}.STAFF_STATE ;;
  }

  dimension: subgroup_code {
    type: string
    hidden: yes
    sql: ${TABLE}.SUBGROUP_CODE ;;
  }

  dimension: subgroup {
    type: string
    label: "Tribal Affiliation"
    description: "Tribal affiliation"
    sql: ${TABLE}.SUBGROUP_LONG_DESC ;;
  }

  dimension: supervisor {
    type: string
    hidden: yes
    sql: ${TABLE}.SUPERVISOR ;;
  }

  dimension_group: tenure {
    type: time
    hidden: yes
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
    label: "Exit Reason"
    description: "Termination reason"
    sql: ${TABLE}.TERMINATION_DESC ;;
  }

  measure: total_annual_salary {
    type: sum
    label: "Annual Salary"
    description: "Base salary of the staff member budgeted for the current year."
    sql: ${TABLE}.TOT_ANNUAL_SALARY ;;
  }

  dimension: years_district {
    type: number
    label: "Years in District"
    description: "Number of years the staff member has as a teacher or principal in their current school district."
    sql: ${TABLE}.YEARS_DISTRICT ;;
  }

  dimension: years_service {
    type: number
    label: "Years of Experience"
    description: "Total years of experience in any school district in any state - applies to teachers and principals."
    sql: ${TABLE}.YEARS_SERVICE ;;
  }

  measure: staff_race_indian_eduction_count {
    type: sum
    label: "American Indian Staff - IED Count"
    description: "Count of Native American staff per Indian Education Dept rules - Race 1 is American Indian/Alaskan Native."
    sql: case when ${race1_code}='I' then 1
              else 0 end;;
  }
  dimension: staff_race_indian_education {
    type: string
    label: "Staff Race - IED Definition"
    description: "Derived race of the staff member Native American per Indian Education Dept rules - Hispanic if Hispanic indicator is Yes and Race 1 is Caucasian otherwise Race 1."
    sql: case when ${race1_code}='C' and ${hispanic}='Yes' then 'Hispanic'
              else ${race1} end;;
  }

  measure: count_staff_locations {
    type: count
    drill_fields: [staff_name_full]
  }

  measure: count_staff {
    type: count_distinct
    sql_distinct_key: ${staff_id} ;;
    drill_fields: [staff_name_full]
  }
}
