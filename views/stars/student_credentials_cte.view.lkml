view: student_credentials_cte {
  sql_table_name: stars.student_credentials_cte ;;

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: industry_credential_code {
    type: string
    sql: ${TABLE}.Industry_Credential_Code ;;
  }

  dimension: industry_credential_description {
    type: string
    sql: ${TABLE}.Industry_Credential_Description ;;
  }

  dimension: industry_credential_key {
    type: number
    sql: ${TABLE}.INDUSTRY_CREDENTIAL_KEY ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: school_year {
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
    sql:${TABLE}.School_Year;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: student_key {
    type: number
    sql: ${TABLE}.STUDENT_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
