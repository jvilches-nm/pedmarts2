view: discipline {
  sql_table_name: stars.discipline ;;

  dimension: alcohol_related {
    type: string
    description: "Infraction was alcohol related - Yes/No"
    sql: ${TABLE}.Alcohol_Related ;;
  }

  dimension: criminal_charge {
    type: string
    description: "Infraction involved a police report - Yes/No"
    sql: case ${TABLE}.Criminal_Charge_Code when 'Y' then 'Yes' else 'No' end;;
  }

  dimension: infraction {
    type: string
    description: "Infraction description"
    sql: ${TABLE}.Discipline_Infraction ;;
  }

  dimension: infraction_category {
    type: string
    description: "Infraction category"
    sql: ${TABLE}.Discipline_Infraction_Category ;;
  }

  dimension: infraction_code {
    type: string
    hidden: no
    sql: ${TABLE}.Discipline_Infraction_Code ;;
  }

  dimension: infraction_comment {
    type: string
    description: "Infraction comment - freeform text"
    sql: ${TABLE}.Discipline_Infraction_Comment ;;
  }

  dimension_group: infraction {
    type: time
    description: "Infraction date"
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Discipline_Infraction_Date ;;
  }

  dimension: discipline_infraction_key_for_infraction_code {
    type: number
    hidden: yes
    sql: ${TABLE}.Discipline_Infraction_Key_for_infraction_Code ;;
  }

  dimension: discipline_response {
    type: string
    description: "Discipline response description"
    sql: case when ${TABLE}.Discipline_Response is null then 'No Response' else ${TABLE}.Discipline_Response end;;
  }

  dimension: discipline_response_category {
    type: string
    hidden: no
    sql: ${TABLE}.Discipline_Response_Category ;;
  }

  dimension: discipline_response_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Discipline_Response_Code ;;
  }

  dimension_group: discipline_response {
    type: time
    timeframes: [
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Discipline_Response_Date ;;
  }

  measure: discipline_response_duration {
    type: sum
    description: "Duration of the discipline response - number of days"
    sql: ${TABLE}.Discipline_Response_Duration ;;
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

  dimension: drug_related {
    type: string
    description: "Infraction was drug related - Yes/No"
    sql: ${TABLE}.Drug_Related ;;
  }

  dimension: gang_related {
    type: string
    description: "Infraction was gang related - Yes/No"
    sql: ${TABLE}.Gang_Related ;;
  }

  dimension: hate_crime {
    type: string
    description: "Infraction was a hate crime - Yes/No"
    sql: ${TABLE}.Hate_Crime ;;
  }

  dimension: incident_attributes_key {
    type: number
    hidden: yes
    sql: ${TABLE}.Incident_Attributes_Key ;;
  }

  measure: infraction_cost {
    type: sum
    description: "The cost of the damages incurred by the infraction"
    sql: ${TABLE}.Infraction_Cost ;;
  }

  dimension: infraction_event_id {
    type: string
    #hidden: yes
    sql: ${TABLE}.Infraction_Event_ID ;;
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

  dimension: primary_victim_type {
    type: string
    description: "Description of the primary victim of the infraction"
    sql: ${TABLE}.Primary_Victim_Type ;;
  }

  dimension: primary_victim_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Primary_Victim_Type_Code ;;
  }

  dimension: school_level {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Level ;;
  }

  dimension: school_level_code {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Level_Code ;;
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

  dimension: serious_injury {
    type: string
    description: "Infraction caused a serious injury - Yes/No"
    sql: ${TABLE}.Serious_Injury ;;
  }

  dimension: student_grade_level {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_Grade_Level ;;
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

  dimension: weapon_related {
    type: string
    description: "Infraction involved a weapon - Yes/No"
    sql: ${TABLE}.Weapon_Type ;;
  }

  dimension: weapon_type_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Weapon_Type_Code ;;
  }

  measure: count {
    type: count
  }
}
