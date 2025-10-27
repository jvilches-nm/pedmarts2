view: area_assmt_istation_math {
  sql_table_name: CEDSDW.AREA_Assmt_IStation_Math ;;

  dimension: data_collection_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DataCollectionName ;;
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
  dimension: lvl_ca_d {
    type: number
    label: "Computations and Algebraic Thinking"
    description: "Computations and Algebraic Thinking Level: 1-5 or blank"
    sql: ${TABLE}.LvlCA ;;
  }
  dimension: lvl_g_d {
    type: number
    label: "Geometry"
    description: "Geometry Level: 1-5 or blank"
    sql: ${TABLE}.LvlG ;;
  }
  dimension: lvl_md_d {
    type: number
    label: "Measurement and Data Analysis"
    description: "Measurement and Data Analysis Level: 1-5 or blank"
    sql: ${TABLE}.LvlMD ;;
  }
  dimension: lvl_ns_d {
    type: number
    label: "Number Sense"
    description: "Number Sense Level: 1-5 or blank"
    sql: ${TABLE}.LvlNS ;;
  }
  measure: lvl_ca {
    type: average
    label: "Computations and Algebraic Thinking"
    description: "Computations and Algebraic Thinking Level: 1-5 or blank"
    sql: ${TABLE}.LvlCA *1.00 ;;
  }
  measure: lvl_g {
    type: average
    label: "Geometry"
    description: "Geometry Level: 1-5 or blank"
    sql: ${TABLE}.LvlG *1.00 ;;
  }
  measure: lvl_md {
    type: average
    label: "Measurement and Data Analysis"
    description: "Measurement and Data Analysis Level: 1-5 or blank"
    sql: ${TABLE}.LvlMD *1.00 ;;
  }
  measure: lvl_ns {
    type: average
    label: "Number Sense"
    description: "Number Sense Level: 1-5 or blank"
    sql: ${TABLE}.LvlNS *1.00 ;;
  }
  dimension: name_flat_file {
    type: string
    hidden: yes
    sql: ${TABLE}.Name_FlatFile ;;
  }
  dimension: overall_level_d {
    type: number
    label: "Overall Score"
    description: "Overall score: 1-5"
    sql: ${TABLE}.OverallLevel ;;
  }
  measure: overall_level {
    type: average
    label: "Overall Score"
    description: "Overall score: 1-5"
    sql: ${TABLE}.OverallLevel *1.00 ;;
  }
  dimension: quantile {
    type: string
    description: "Quantile Level"
    sql: ${TABLE}.Quantile ;;
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
  dimension: student_uniq_id {
    type: string
    label: "Student ID"
    description: "Unique state student identifier"
    sql: ${TABLE}.StudentUniqId ;;
  }
  dimension: subtest {
    type: string
    description: "Subtest name: Math"
    sql: ${TABLE}.Subtest ;;
  }
  dimension: test {
    type: string
    description: "Name of the test (ISTATION)"
    sql: ${TABLE}.Test ;;
  }
  dimension_group: testing {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TestingDate ;;
  }
  measure: count {
    type: count
    # drill_fields: [data_collection_name]
  }
}
