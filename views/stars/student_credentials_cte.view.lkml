view: student_credentials_cte {
  sql_table_name: stars.student_credentials_cte ;;

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: industry_credential_code {
    type: string
    sql: ${TABLE}.Industry_Credential_Code ;;
  }

  dimension: industry_credential_description {
    type: string
    label: "Industry Credential"
    sql: ${TABLE}.Industry_Credential_Description ;;
  }

  dimension: industry_credential_key {
    type: number
    hidden: yes
    sql: ${TABLE}.INDUSTRY_CREDENTIAL_KEY ;;
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
    sql:${TABLE}.School_Year;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
