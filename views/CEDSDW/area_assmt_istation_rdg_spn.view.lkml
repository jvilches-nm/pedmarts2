view: area_assmt_istation_rdg_spn {
  sql_table_name: CEDSDW.AREA_Assmt_IStation_RDG_SPN ;;

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
  dimension: lexile {
    type: string
    description: "Lexile level"
    sql: ${TABLE}.Lexile ;;
  }
  dimension: lvl_au_d {
    type: number
    label: "Auditory Comprehension"
    description: "Auditory Comprehension (Grade K): 1-5"
    sql: ${TABLE}.LvlAU ;;
  }
  measure: lvl_au {
    type: average
    label: "Auditory Comprehension"
    description: "Auditory Comprehension (Grade K): 1-5"
    sql: ${TABLE}.LvlAU *1.00 ;;
  }
  dimension: lvl_cmp_d {
    type: number
    label: "Comprehension"
    description: "Comprehension Level (Grades 1, 2): 1-5"
    sql: ${TABLE}.LvlCMP ;;
  }
  measure: lvl_cmp {
    type: average
    label: "Comprehension"
    description: "Comprehension Level (Grades 1, 2): 1-5"
    sql: ${TABLE}.LvlCMP *1.00 ;;
  }
  dimension: lvl_esc_d {
    type: number
    label: "Escritura"
    description: "Escritura Level (Grades 1, 2): 1-5"
    sql: ${TABLE}.LvlESC ;;
  }
  measure: lvl_esc {
    type: average
    label: "Escritura"
    description: "Escritura Level (Grades 1, 2): 1-5"
    sql: ${TABLE}.LvlESC *1.00 ;;
  }
  dimension: lvl_flu_d {
    type: number
    label: "Fluency"
    description: "Fluency Level (Grade 2): 1-5"
    sql: ${TABLE}.LvlFLU ;;
  }
  measure: lvl_flu {
    type: average
    label: "Fluency"
    description: "Fluency Level (Grade 2): 1-5"
    sql: ${TABLE}.LvlFLU *1.00 ;;
  }
  dimension: lvl_fon_d {
    type: number
    label: "Fonetica"
    description: "Fonetica Level (Grade K, 1, 2): 1-5"
    sql: ${TABLE}.LvlFON ;;
  }
  measure: lvl_fon {
    type: average
    label: "Fonetica"
    description: "Fonetica Level (Grade K, 1, 2): 1-5"
    sql: ${TABLE}.LvlFON *1.00 ;;
  }
  dimension: lvl_overall_d {
    type: number
    label: "Overall Score"
    description: "Overall Score (Grades K, 1, 2): 1-5"
    sql: ${TABLE}.LvlOverall ;;
  }
  measure: lvl_overall {
    type: average
    label: "Overall Score"
    description: "Overall Score (Grades K, 1, 2): 1-5"
    sql: ${TABLE}.LvlOverall *1.00 ;;
  }
  dimension: lvl_voc_d {
    type: number
    label: "Vocabulary"
    description: "Vocabulary Level (Grades K, 1, 2): 1-5"
    sql: ${TABLE}.LvlVoc ;;
  }
  measure: lvl_voc {
    type: average
    label: "Vocabulary"
    description: "Vocabulary Level (Grades K, 1, 2): 1-5"
    sql: ${TABLE}.LvlVoc *1.00 ;;
  }
  dimension: name_flat_file {
    type: string
    hidden: yes
    sql: ${TABLE}.Name_FlatFile ;;
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
    description: "Subtest name: SLA (Spanish Language Arts)"
    sql: ${TABLE}.Subtest ;;
  }
  dimension: test {
    type: string
    description: "Name of the test (ISTATION)"
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
    #  drill_fields: [data_collection_name]
  }
}
