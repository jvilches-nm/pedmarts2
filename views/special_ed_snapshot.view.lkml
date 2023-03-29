view: special_ed_snapshot {
  sql_table_name: stars.special_ed_snapshot ;;

  dimension: alt_assessment {
    type: string
    label: "Alternate Assessment"
    description: "Indication of whether the Special Education Student is entitled to take an alternate assessment rather than the regular state assessment, as documented in their Service Plan (IEP)."
    sql: ${TABLE}.Alt_Assessment ;;
  }

  dimension: braille_instruction {
    type: string
    description: "Indication of need for Braille Instruction"
    sql: ${TABLE}.Braille_Instruction ;;
  }

  dimension: challenge_type {
    type: string
    sql: ${TABLE}.Challenge_Type ;;
  }

  dimension: challenge_type_code {
    type: string
    sql: ${TABLE}.Challenge_Type_Code ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: enrolled_special_education_at_school_year_start {
    type: string
    sql: ${TABLE}.Enrolled_Special_Education_At_School_Year_Start ;;
  }

  dimension_group: entry {
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
    sql: ${TABLE}.Entry_Date ;;
  }

  dimension: expected_diploma_type {
    type: string
    label: "Expected Diploma Type"
    description: "Expected Graduation Option. The option determined and indicated in the student's IEP.
    3 = Modified Option
    4 = Ability Option
    5 = Standard Option"
    sql: ${TABLE}.Expected_Diploma_Type ;;
  }

  dimension: expected_diploma_type_code {
    type: string
    sql: ${TABLE}.Expected_Diploma_Type_Code ;;
  }

  dimension: extended_school_year {
    type: string
    sql: ${TABLE}.Extended_School_Year ;;
  }

  dimension: hearing_impairment_level {
    type: string
    sql: ${TABLE}.Hearing_Impairment_Level ;;
  }

  dimension: hearing_impairment_level_code {
    type: string
    sql: ${TABLE}.Hearing_Impairment_Level_Code ;;
  }

  dimension_group: last_evaluation {
    type: time
    label: "Last Evaluation Date"
    description: "Date on which the student last received a formal special education evaluation."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Last_Evaluation_Date ;;
  }

  dimension_group: last_iep {
    type: time
    label: "Last IEP Date"
    description: "Date on which the student last received an Individual Education Plan (IEP)."
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Last_IEP_Date ;;
  }

  dimension: living_setting {
    type: string
    sql: ${TABLE}.Living_Setting ;;
  }

  dimension: living_setting_code {
    type: string
    sql: ${TABLE}.Living_Setting_Code ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: modified_date_special_ed_snap {
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
    sql: ${TABLE}.modified_date_SPECIAL_ED_SNAP ;;
  }

  dimension: modified_indicator_special_ed_snap {
    type: string
    sql: ${TABLE}.modified_indicator_SPECIAL_ED_SNAP ;;
  }

  dimension: period_key_for_snapshot_date {
    type: number
    sql: ${TABLE}.PERIOD_KEY_for_Snapshot_Date ;;
  }

  dimension: primary_area_of_exceptionality {
    type: string
    description: "Values:
    G = Gifted Only or Gifted as primary and disability as secondary as indicated in the IEP.
    SE = Disability Only or Disability as primary and Gifted as secondary as indicated in the IEP."
    sql: ${TABLE}.Primary_Area_of_Exceptionality ;;
  }

  dimension: primary_area_of_exceptionality_code {
    type: string
    sql: ${TABLE}.Primary_Area_of_Exceptionality_Code ;;
  }

  dimension: primary_cause_of_disability {
    type: string
    sql: ${TABLE}.Primary_Cause_of_Disability ;;
  }

  dimension: primary_cause_of_disability_code {
    type: string
    sql: ${TABLE}.Primary_Cause_of_Disability_Code ;;
  }

  dimension: primary_setting {
    type: string
    sql: ${TABLE}.Primary_Setting ;;
  }

  dimension: primary_setting_code {
    type: string
    sql: ${TABLE}.Primary_Setting_Code ;;
  }

  dimension: quaternary_disability {
    type: string
    sql: ${TABLE}.Quaternary_Disability ;;
  }

  dimension: quaternary_disability_code {
    type: string
    sql: ${TABLE}.Quaternary_Disability_Code ;;
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
    sql: ${TABLE}.School_Year ;;
  }

  dimension: primary_disability {
    type: string
    label: "Primary Disability"
    sql: ${TABLE}.Primary_Disability ;;
  }

  dimension: primary_disability_code {
    type: string
    sql: ${TABLE}.Primary_Disability_Code ;;
  }


  dimension: secondary_disability {
    type: string
    label: "Secondary Disability"
    description: "Values:
    Autism
    Deaf-Blindness
    Developmental Delay
    Emotional Disturbance
    Hearing Impairment
    Intellectual Disability (previously referred to as MR – Mental Retardation)
    Multiple Disabilities
    Other Health Impairment
    Orthopedic Impairment
    Speech or Language Impairment
    Specific Learning Disability
    Traumatic Brain Injury
    Visual Impairment"
    sql: ${TABLE}.Secondary_Disability ;;
  }

  dimension: secondary_disability_code {
    type: string
    sql: ${TABLE}.Secondary_Disability_Code ;;
  }

  dimension_group: special_ed_exit {
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
    sql: ${TABLE}.Special_Ed_Exit_Date ;;
  }

  dimension: staff_key_for_se_teacher_id {
    type: number
    sql: ${TABLE}.STAFF_KEY_for_SE_Teacher_ID ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  dimension_group: student_snapshot {
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
    sql: ${TABLE}.Student_Snapshot_Date ;;
  }

  dimension: tertiary_disability {
    type: string
    sql: ${TABLE}.Tertiary_Disability ;;
  }

  dimension: tertiary_disability_code {
    type: string
    sql: ${TABLE}.Tertiary_Disability_Code ;;
  }

  dimension: transition_iep_status {
    type: string
    sql: ${TABLE}.Transition_IEP_Status ;;
  }

  dimension: transition_iep_status_code {
    type: string
    sql: ${TABLE}.Transition_IEP_Status_Code ;;
  }

  dimension: vision_impairment_level {
    type: string
    sql: ${TABLE}.Vision_Impairment_Level ;;
  }

  dimension: vision_impairment_level_code {
    type: string
    sql: ${TABLE}.Vision_Impairment_Level_Code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
