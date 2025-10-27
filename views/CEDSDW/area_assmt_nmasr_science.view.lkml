view: area_assmt_nmasr_science {
  sql_table_name: CEDSDW.AREA_Assmt_NMASR_Science ;;

  dimension: accountability_model {
    type: string
    description: "Acountability model used"
    sql: case when left(${TABLE}.AccountabilityModel,1)='1' then 'Yes' else 'No' end ;;
  }
  dimension: data_collection_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DataCollectionName ;;
  }
  dimension: domain1_ps {
    type: number
    label: "D1 Physical Sciences"
    description: "Domain 1 Physical Sciences"
    sql: ${TABLE}.Domain1_PS ;;
  }
  dimension: domain1_ps_pl {
    type: number
    label: "D1 Physical Sciences Performance Level"
    description: "Domain 1 Physical Sciences Performance Level: 0-15 or blank"
    sql: ${TABLE}.Domain1_PS_PL ;;
  }
  dimension: domain2_ls {
    type: number
    label: "D2 Life Sciences"
    description: "Domain 2 Life Sciences"
    sql: ${TABLE}.Domain2_LS ;;
  }
  dimension: domain2_ls_pl {
    type: number
    label: "D2 Life Sciences Performance Level"
    description: "Domain 2 Life Sciences Performance Level: 0-24 or blank"
    sql: ${TABLE}.Domain2_LS_PL ;;
  }
  dimension: domain3_ess {
    type: number
    label: "D3 Earth and Space Sciences"
    description: "Domain 3 Earth and Space Sciences"
    sql: ${TABLE}.Domain3_ESS ;;
  }
  dimension: domain3_ess_pl {
    type: number
    label: "D3 Earth and Space Sciences Performance Level"
    description: "Domain 3 Earth and Space Sciences Performance Level: 0-25 or blank"
    sql: ${TABLE}.Domain3_ESS_PL ;;
  }
  dimension: fact_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.FactId ;;
  }
  dimension: grade {
    type: string
    label: "Student Grade Level"
    description: "Grade level at the time of the test: 00-12 (00=K)"
    sql: ${TABLE}.Grade ;;
  }
  dimension: name_flat_file {
    type: string
    hidden: yes
    sql: ${TABLE}.Name_FlatFile ;;
  }
  dimension: pl_d {
    type: number
    label: "Performance Level"
    description: "Performance Level: 1=Novice, 2=Nearing Proficiency, 3=Proficient, 4=Advanced"
    sql: ${TABLE}.PL ;;
  }
  measure: pl {
    type: average
    label: "Performance Level"
    description: "Performance Level: 1=Novice, 2=Nearing Proficiency, 3=Proficient, 4=Advanced"
    sql: ${TABLE}.PL *1.00 ;;
  }
  dimension_group: record_end_date {
    type: time
    hidden: yes
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RecordEndDateTime ;;
  }
  dimension_group: record_start_date {
    type: time
    hidden: yes
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RecordStartDateTime ;;
  }
  dimension: school_number {
    type: string
    label: "District-School Code"
    description: "Identifier code for the district and school location"
    sql: left(${TABLE}.schoolnumber,3) + '-' + right(${TABLE}.schoolnumber,3) ;;
  }
  dimension: school_year {
    type: string
    description: "School year in yyyy-yyyy format"
    sql: left(${TABLE}.SchoolYear,5) + '20' + substring(schoolyear, 6, 2) ;;
  }
  dimension: ss {
    type: string
    label: "Scale Score"
    description: "Scale score: 500-1190"
    sql: ${TABLE}.SS ;;
  }
  dimension: student_uniq_id {
    type: string
    label: "Student ID"
    description: "Unique state student identifier"
    sql: ${TABLE}.StudentUniqId ;;
  }
  dimension: subtest {
    type: string
    description: "Subtest name: Science"
    sql: ${TABLE}.Subtest ;;
  }
  dimension: test {
    type: string
    description: "Name of the test (NMASR)"
    sql: ${TABLE}.Test ;;
  }
  dimension_group: testing {
    type: time
    description: "Date the student was tested"
    timeframes: [date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TestingDate ;;
  }
  measure: count {
    type: count
    # drill_fields: [data_collection_name]
  }
}
