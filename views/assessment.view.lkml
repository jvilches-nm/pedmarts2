view: assessment {
  sql_table_name: stars.assessment ;;
  drill_fields: [assessment_name, school_year, ]

  dimension: state_assessment_id {
    type: string
    hidden: yes
    sql: ${TABLE}.State_Assessment_ID ;;
  }

  dimension: accountable_location_district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Accountable_Location_District_Key ;;
  }

  dimension: accountable_location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Accountable_Location_Key ;;
  }

  dimension: achieved_detail_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Achieved_Detail_Key ;;
  }

  dimension: achievement_level {
    type: string
    sql: ${TABLE}.Achievement_Level ;;
  }

  dimension: achievement_level_code {
    type: string
    sql: ${TABLE}.Achievement_Level_Code ;;
  }

  dimension: achievement_level_default_value_indicator {
    type: string
    sql: ${TABLE}.Achievement_Level_Default_Value_Indicator ;;
  }


  dimension: assessment_identifier {
    type: string
    sql: ${TABLE}.Assessment_ID ;;
  }

  dimension: assessment_id_school_year {
    type: string
    #hidden: yes
    sql: ${TABLE}.Assessment_ID_School_Year ;;
  }

  dimension: assessment_language_default_value_indicator {
    type: string
    sql: ${TABLE}.Assessment_Language_Default_Value_Indicator ;;
  }

  dimension: assessment_name {
    type: string
    sql: coalesce (${TABLE}.Assessment_Name, ${TABLE}.Assessment_ID_School_Year)  ;;
  }

  dimension: assessment_student_snapshot_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Assessment_Student_Snapshot_Key ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.District_Key ;;
  }

  dimension: evaluator_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Evaluator_Key ;;
  }

  dimension: file_test_date_period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.File_Test_Date_Period_Key ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_Key ;;
  }

  dimension_group: modified_date_assessment_achdet {
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
    sql: ${TABLE}.modified_date_ASSESSMENT_ACHDET ;;
  }

  dimension_group: modified_date_assessment_fact {
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
    sql: ${TABLE}.modified_date_ASSESSMENT_FACT ;;
  }

  dimension_group: modified_date_assessment_info {
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
    sql: ${TABLE}.modified_date_ASSESSMENT_INFO ;;
  }

  dimension_group: modified_date_assessment_item {
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
    sql: ${TABLE}.modified_date_ASSESSMENT_ITEM ;;
  }

  dimension_group: modified_date_assessment_lang {
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
    sql: ${TABLE}.modified_date_ASSESSMENT_LANG ;;
  }

  dimension_group: modified_date_assmnt_score_model {
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
    sql: ${TABLE}.modified_date_ASSMNT_SCORE_MODEL ;;
  }

  dimension_group: assessment {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Period_End_Date ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Period_Key ;;
  }

  dimension: period_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Period_Level ;;
  }

  dimension: primary_subtest_score_type {
    type: string
    sql: ${TABLE}.Primary_Subtest_Score_Type ;;
  }

  dimension: raw_score {
    type: number
    sql: ${TABLE}.Raw_Score ;;
  }

  dimension: scaled_score {
    type: number
    sql: ${TABLE}.Scaled_Score ;;
  }

  dimension: results_for_subtest_level {
    type: string
    sql: ${TABLE}.Results_for_Subtest_Level ;;
  }

  dimension: school_year {
    type: date
    #hidden: yes
    sql: ${TABLE}.School_Year ;;
  }

  dimension: scoring_model {
    type: string
    sql: ${TABLE}.Scoring_Model ;;
  }

  dimension: scoring_model_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Code ;;
  }

  dimension: scoring_model_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Key ;;
  }

  dimension: scoring_model_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Name ;;
  }

  dimension: special_ed_assessment {
    type: string
    sql: ${TABLE}.Special_Ed_Assessment ;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Student_Key ;;
  }

  dimension: student_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Name ;;
  }

  dimension: subtest_description {
    type: string
    sql: ${TABLE}.Subtest_Description ;;
  }

  dimension: subtest {
    type: string
    sql: ${TABLE}.Subtest_Identifiers ;;
  }


  dimension: subtest_language {
    type: string
    sql: case ${TABLE}.Subtest_Language when 'E' then 'English'
                                        when 'S' then 'Spanish'
                                        else ${TABLE}.Subtest_Language;;
  }

  dimension: subtest_subject_area {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Subject_Area ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      state_assessment_id,
      subtest_name,
      scoring_model_name,
      assessment_name,
      student_name,
      assessment.subtest_name,
      assessment.scoring_model_name,
      assessment.assessment_name,
      assessment.state_assessment_id,
      assessment.student_name,
      assessment.count
    ]
  }

  #------------------------------------------------
  dimension: achievement_level_group {
    type: string
    hidden: yes
    sql: ${TABLE}.Achievement_Level_Group ;;
  }
  dimension: ai_standard_error_of_measurement {
    type: number
    hidden: yes
    sql: ${TABLE}.AI_Standard_Error_of_Measurement ;;
  }
  dimension: ai_subtest_aggregated {
    type: string
    hidden: yes
    sql: ${TABLE}.AI_Subtest_Aggregated ;;
  }
  dimension: assessment_accountable_district_level_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Accountable_District_Level_Status_Code ;;
  }
  dimension: assessment_accountable_school_level_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Accountable_School_Level_Status_Code ;;
  }
  dimension: assessment_accountable_state_level_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Accountable_State_Level_Status_Code ;;
  }
  dimension: assessment_category {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Category ;;
  }
  dimension: assessment_group {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Group ;;
  }

  dimension: assessment_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Status ;;
  }
  dimension: assessment_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Status_Code ;;
  }
  dimension: assessment_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Type ;;
  }
  dimension: assessment_vendor {
    type: string
    hidden: yes
    sql: ${TABLE}.Assessment_Vendor ;;
  }
  dimension: converted_score {
    type: number
    hidden: yes
    sql: ${TABLE}.Converted_Score ;;
  }
  dimension: math_participation_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Math_Participation_Status ;;
  }
  dimension: math_participation_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Math_Participation_Status_Code ;;
  }
  dimension: math_proficiency_target {
    type: string
    hidden: yes
    sql: ${TABLE}.Math_Proficiency_Target ;;
  }
  dimension: math_proficiency_target_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Math_Proficiency_Target_Code ;;
  }
  dimension: number_of_subtest_items {
    type: number
    hidden: yes
    sql: ${TABLE}.Number_of_Subtest_Items ;;
  }
  dimension: numeric_primary_subtest_score_type {
    type: string
    hidden: yes
    sql: ${TABLE}.Numeric_Primary_Subtest_Score_Type ;;
  }
  dimension: percentage_score {
    type: number
    hidden: yes
    sql: ${TABLE}.Percentage_Score ;;
  }
  dimension: persistently_dangerous_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Persistently_Dangerous_Status ;;
  }
  dimension: persistently_dangerous_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Persistently_Dangerous_Status_Code ;;
  }
  dimension: primary_achievement_level_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Primary_Achievement_Level_Sort_Sequence ;;
  }
  dimension: primary_numeric_score {
    type: number
    hidden: yes
    sql: ${TABLE}.Primary_Numeric_Score ;;
  }
  dimension: primary_subtest_score_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Subtest_Score_Type_Code ;;
  }
  dimension: quantile_score_alpha {
    type: string
    hidden: yes
    sql: ${TABLE}.Quantile_Score_Alpha ;;
  }
  dimension: reporting_achievement_group {
    type: string
    hidden: yes
    sql: ${TABLE}.Reporting_Achievement_Group ;;
  }
  dimension: reporting_assessment_status {
    type: string
    hidden: yes
    sql: ${TABLE}.Reporting_Assessment_Status ;;
  }
  dimension: results_for_cluster_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Results_for_Cluster_Level ;;
  }
  dimension: results_for_question_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Results_for_Question_Level ;;
  }
  dimension: results_for_skill_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Results_for_Skill_Level ;;
  }
  dimension: scoring_model_category {
    type: string
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Category ;;
  }
  dimension: scoring_model_category_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Category_Sort_Sequence ;;
  }

  dimension: scoring_model_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Scoring_Model_Sort_Sequence ;;
  }
  dimension: secondary_achievement_level_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Secondary_Achievement_Level_Sort_Sequence ;;
  }
  dimension: standard_error_of_measurement {
    type: number
    hidden: yes
    sql: ${TABLE}.Standard_Error_of_Measurement ;;
  }

  dimension: subtest_administration {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Administration ;;
  }

  dimension: subtest_aggregated {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Aggregated ;;
  }


  dimension: subtest_form {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Form ;;
  }

  dimension: subtest_grade_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Grade_Level ;;
  }

  dimension: subtest_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Subtest_Key ;;
  }

  dimension: subtest_language_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Language_Code ;;
  }

  dimension: subtest_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Level ;;
  }

  dimension: subtest_max_score {
    type: number
    hidden: yes
    sql: ${TABLE}.Subtest_Max_Score ;;
  }

  dimension: subtest_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Name ;;
  }

  dimension: subtest_quality_rating {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Quality_Rating ;;
  }

  dimension: subtest_quality_rating_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Quality_Rating_Code ;;
  }

  dimension: subtest_sort_sequence {
    type: number
    hidden: yes
    sql: ${TABLE}.Subtest_Sort_Sequence ;;
  }

  dimension: subtest_subject_area_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Subtest_Subject_Area_Code ;;
  }

  dimension_group: test_assignment {
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
    sql: ${TABLE}.Test_Assignment_Date ;;
  }

  dimension: test_booklet_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Test_Booklet_ID ;;
  }

  dimension: test_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Test_Key ;;
  }

  dimension: test_language_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Test_Language_Key ;;
  }

  dimension: testing_accommodation {
    type: string
    hidden: yes
    sql: ${TABLE}.Testing_Accommodation ;;
  }

  dimension: title_i_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Title_I_Status_Code ;;
  }

  dimension: use_in_accountability {
    type: string
    hidden: yes
    sql: ${TABLE}.Use_In_Accountability ;;
  }

}
