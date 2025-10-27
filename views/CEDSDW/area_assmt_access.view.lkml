view: area_assmt_access {
  sql_table_name: CEDSDW.AREA_Assmt_Access ;;
  label: "AREA Assessment - Access"
  dimension: data_collection_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DataCollectionName ;;
  }
  dimension: fact_id {
    type: number
    hidden: yes
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
  dimension: on_track {
    type: string
    description: "Student is on track for exiting EL status within 5 years"
    sql: case left(${TABLE}.OnTrack,1) when '1' then 'Yes' else 'No' end ;;
  }
  dimension: proficient {
    type: string
    description: "Student is proficient (Score of at least 5.0 prior to 2024 and at least 4.7 2024 and later."
    sql: case when left(${TABLE}.schoolyear,4)<='2022' and ${TABLE}.proflvloverall>=5.0 then 'Yes'
              when left(${TABLE}.schoolyear,4)>='2023' and ${TABLE}.proflvloverall>=4.7 then 'Yes'
              else 'No' end;;
  }
  dimension: prof_lvl_compreh_discrete {
    type: number
    label: "Proficiency Level Comprehension"
    description: "Comprehension proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlCompreh ;;
  }
  dimension: prof_lvl_listening_discrete {
    type: number
    label: "Proficiency Level Listening"
    description: "Listening proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlListening ;;
  }
  dimension: prof_lvl_literacy_discrete {
    type: number
    label: "Proficiency Level Literacy"
    description: "Literacy proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlLiteracy ;;
  }
  dimension: prof_lvl_oral_discrete {
    type: number
    label: "Proficiency Level Oral"
    description: "Oral proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlOral ;;
  }
  dimension: prof_lvl_overall_discrete {
    type: number
    label: "Proficiency Level Overall"
    description: "Overall proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlOverall ;;
  }
  dimension: prof_lvl_reading_discrete {
    type: number
    label: "Proficiency Level Reading"
    description: "Reading proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlReading ;;
  }
  dimension: prof_lvl_speaking_discrete {
    type: number
    label: "Proficiency Level Speaking"
    description: "Speaking proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlSpeaking ;;
  }
  dimension: prof_lvl_writing_discrete {
    type: number
    label: "Proficiency Level Writing"
    description: "Writing proficiency level from 1.0 to 6.0 or blank"
    sql: ${TABLE}.ProfLvlWriting ;;
  }

  measure: prof_lvl_compreh {
    type: average
    label: "Proficiency Level Comprehension"
    description: "Comprehension proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlCompreh *1.00;;
  }
  measure: prof_lvl_listening {
    type: average
    label: "Proficiency Level Listening"
    description: "Listening proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlListening *1.00 ;;
  }
  measure: prof_lvl_literacy {
    type: average
    label: "Proficiency Level Literacy"
    description: "Literacy proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlLiteracy *1.00 ;;
  }
  measure: prof_lvl_oral {
    type: average
    label: "Proficiency Level Oral"
    description: "Oral proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlOral *1.00 ;;
  }
  measure: prof_lvl_overall {
    type: average
    label: "Proficiency Level Overall"
    description: "Overall proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlOverall *1.00 ;;
  }
  measure: prof_lvl_reading {
    type: average
    label: "Proficiency Level Reading"
    description: "Reading proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlReading *1.00;;
  }
  measure: prof_lvl_speaking {
    type: average
    label: "Proficiency Level Speaking"
    description: "Speaking proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlSpeaking *1.00 ;;
  }
  measure: prof_lvl_writing {
    type: average
    label: "Proficiency Level Writing"
    description: "Writing proficiency level from 1.0 to 6.0 or blank - reflects an average if representing more than one test"
    sql: ${TABLE}.ProfLvlWriting *1.00 ;;
  }
  dimension_group: record_end_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    hidden: yes
    sql: ${TABLE}.RecordEndDateTime ;;
  }
  dimension_group: record_start_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    hidden: yes
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
  dimension: test {
    type: string
    description: "Name of the test (ACCESS)"
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
