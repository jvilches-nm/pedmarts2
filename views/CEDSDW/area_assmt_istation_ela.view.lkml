view: area_assmt_istation_ela {
  sql_table_name: CEDSDW.AREA_Assmt_IStation_ELA ;;

  dimension: accountability_model {
    type: string
    description: "Acountability model used"
    sql: case when left(${TABLE}.AccountabilityModel,1)='1' then 'Yes' else 'No' end ;;
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
  ## Grade K scores
  dimension: lvl_lc2_d {
    type: number
    label: "Listening Comprehension"
    description: "Listening Comprehension Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlLC2 ;;
  }
  dimension: lvl_lk_d {
    type: number
    label: "Letter Knowledge"
    description: "Letter Knowledge Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlLK ;;
  }
  dimension: lvl_pa_d {
    type: number
    label: "Phonemic Awareness"
    description: "Phonemic Awareness Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlPA ;;
  }
  dimension: lvl_tf_d {
    type: number
    label: "Text Fluency"
    description: "Text Fluency Level (Grade 2): 1-5, or blank"
    sql: ${TABLE}.LvlTF ;;
  }
  measure: lvl_lc2 {
    type: average
    label: "Listening Comprehension"
    description: "Listening Comprehension Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlLC2 *1.00 ;;
  }
  measure: lvl_lk {
    type: average
    label: "Letter Knowledge"
    description: "Letter Knowledge Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlLK *1.00 ;;
  }
  measure: lvl_pa {
    type: average
    label: "Phonemic Awareness"
    description: "Phonemic Awareness Level (Grade K): 1-5, or blank"
    sql: ${TABLE}.LvlPA *1.00 ;;
  }
  measure: lvl_tf {
    type: average
    label: "Text Fluency"
    description: "Text Fluency Level (Grade 2): 1-5, or blank"
    sql: ${TABLE}.LvlTF *1.00 ;;
  }
  ## Grade 1 scores
  dimension: lvl_ad_d {
    type: number
    label: "Alphabetic Decoding"
    description: "Alphabetic Decoding Level (Grade 1): 1-5, or blank"
    sql: ${TABLE}.LvlAD ;;
  }
  dimension: lvl_cmp_d {
    type: number
    label: "Comprehension"
    description: "Comprehension Level (Grades 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlCMP ;;
  }
  dimension: lvl_spl_d {
    type: number
    label: "Spelling"
    description: "Spelling Level (Grades 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlSPL ;;
  }
  measure: lvl_ad {
    type: average
    label: "Alphabetic Decoding"
    description: "Alphabetic Decoding Level (Grade 1): 1-5, or blank"
    sql: ${TABLE}.LvlAD *1.00 ;;
  }
  measure: lvl_cmp {
    type: average
    label: "Comprehension"
    description: "Comprehension Level (Grades 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlCMP *1.00 ;;
  }
  measure: lvl_spl {
    type: average
    label: "Spelling"
    description: "Spelling Level (Grades 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlSPL *1.00 ;;
  }
  ##Both grade K & 1
  dimension: lvl_voc_d {
    type: number
    label: "Vocabulary"
    description: "Vocabulary Level (Grades K, 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlVoc ;;
  }
  dimension: lvl_overall_d {
    type: number
    label: "Overall"
    description: "Overall Score (Grades K, 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlOverall ;;
  }
  measure: lvl_voc {
    type: average
    label: "Vocabulary"
    description: "Vocabulary Level (Grades K, 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlVoc *1.00 ;;
  }
  measure: lvl_overall {
    type: average
    label: "Overall"
    description: "Overall Score (Grades K, 1, 2): 1-5, or blank"
    sql: ${TABLE}.LvlOverall *1.00 ;;
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
    description: "Subtest name: LA (Language Arts)"
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
    # drill_fields: [data_collection_name]
  }

  ## Hidden
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
}
