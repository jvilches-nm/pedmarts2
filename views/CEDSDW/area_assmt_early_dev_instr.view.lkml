view: area_assmt_early_dev_instr {

  sql_table_name: CEDSDW.AREA_Assmt_Early_Dev_Instr ;;

  dimension: accountability_model {
    type: string
    description: "Acountability model used"
    sql: case when left(${TABLE}.AccountabilityModel,1)='1' then 'Yes' else 'No' end ;;
  }
  dimension: aggressive_behaviour {
    type: string
    description: "Aggressive Behavior - Sub-skill of Emotional Maturity Component"
    sql: ${TABLE}.AggressiveBehaviour ;;
  }
  dimension: anxious_fearful_behavior {
    type: string
    description: "Anxious Fearful Behavior - Sub-skill of Eotional Maturity Component"
    sql: ${TABLE}.AnxiousFearfulBehavior ;;
  }
  dimension: approaches_to_learning {
    type: string
    description: "Appraoches to Learning - Sub-skill of Social Competence Component"
    sql: ${TABLE}.ApproachesToLearning ;;
  }
  dimension: basic_literacy {
    type: string
    description: "Basic Literacy - Sub-skill of Language and Cognition Component"
    sql: ${TABLE}.BasicLiteracy ;;
  }
  dimension: basic_numeracy_skills {
    type: string
    description: "Basic Numeracy Skills - Sub-skill of Language and Cognition Component"
    sql: ${TABLE}.BasicNumeracySkills ;;
  }
  dimension: comm_skills_general_knowledge {
    type: string
    sql: ${TABLE}.CommSkillsGeneralKnowledge ;;
  }
  dimension: complex_literacy_skills {
    type: string
    description: "Complex Literacy Skills - Sub-skill of Language and Cognition Component"
    sql: ${TABLE}.ComplexLiteracySkills ;;
  }
  dimension: data_collection_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DataCollectionName ;;
  }
  dimension: emotional_maturity_comp {
    type: string
    description: "Emotional Maturity Component"
    sql: ${TABLE}.EmotionalMaturityComp ;;
  }
  dimension: fact_id {
    type: number
    hidden: yes
    sql: ${TABLE}.FactId ;;
  }
  dimension: general_knowledege_comm_comp {
    type: string
    sql: ${TABLE}.GeneralKnowledegeCommComp ;;
  }
  dimension: grade {
    type: string
    label: "Student Grade Level"
    description: "Grade level at the time of the test: 00-12 (00=K)"
    sql: ${TABLE}.Grade ;;
  }
  dimension: gross_fine_motor_skills {
    type: string
    description: "Gross Fine Motor Skills - Sub-skill of Physical Health Well Being Component"
    sql: ${TABLE}.GrossFineMotorSkills ;;
  }
  dimension: hyperactive_inattentive_behavior {
    type: string
    description: "Hyperactive Inattentive Behavior - Sub-skill of Emotional Maturity Component"
    sql: ${TABLE}.HyperactiveInattentiveBehavior ;;
  }
  dimension: instrument {
    type: string
    sql: ${TABLE}.Instrument ;;
  }
  dimension: interest_lit_numeracy_memory {
    type: string
    description: "Inerest Literacy and Numeracy Memory - Sub-skill of Language and Cognition Component"
    sql: ${TABLE}.InterestLitNumeracyMemory ;;
  }
  dimension: lang_and_cognition_comp {
    type: string
    description: "Language and Cognition Component"
    sql: ${TABLE}.LangAndCognitionComp ;;
  }
  dimension: name_flat_file {
    type: string
    hidden: yes
    sql: ${TABLE}.Name_FlatFile ;;
  }
  dimension: phy_hlth_well_being_comp {
    type: string
    sql: ${TABLE}.PhyHlthWellBeingComp ;;
  }
  dimension: phy_independence {
    type: string
    sql: ${TABLE}.PhyIndependence ;;
  }
  dimension: phy_readiness {
    type: string
    sql: ${TABLE}.PhyReadiness ;;
  }
  dimension: prosocial_helping_behavior {
    type: string
    sql: ${TABLE}.ProsocialHelpingBehavior ;;
  }
  dimension: readiness_to_explore_new_things {
    type: string
    sql: ${TABLE}.ReadinessToExploreNewThings ;;
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
  dimension: respect_and_responsibility {
    type: string
    sql: ${TABLE}.RespectAndResponsibility ;;
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
  dimension: soc_comptenence_comp {
    type: string
    sql: ${TABLE}.SocComptenenceComp ;;
  }
  dimension: soc_comptenence_with_peers {
    type: string
    sql: ${TABLE}.SocComptenenceWithPeers ;;
  }
  dimension: student_uniq_id {
    type: string
    label: "Student ID"
    description: "Unique state student identifier"
    sql: ${TABLE}.StudentUniqId ;;
  }
  dimension_group: survey_completed {
    type: time
    timeframes: [date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SurveyCompletedDate ;;
  }
  dimension: survey {
    type: string
    description: "Survey name (EDI)"
    sql: 'EDI' ;;
  }
  measure: count {
    type: count
    # drill_fields: [data_collection_name]
  }
}
