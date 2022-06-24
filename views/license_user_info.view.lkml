view: license_user_info {
  sql_table_name: licensure.license_user_info ;;

  dimension: address {
    type: string
    sql: ${TABLE}.Address ;;
  }

  dimension: background_status {
    type: string
    sql: ${TABLE}.backgroundStatus ;;
  }

  dimension: cert_num {
    type: string
    sql: ${TABLE}.certNum ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: investigation_status_type_name {
    type: string
    sql: ${TABLE}.InvestigationStatusTypeName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.lastName ;;
  }

  dimension: mi {
    type: string
    sql: ${TABLE}.MI ;;
  }

  dimension: phone_no {
    type: string
    sql: ${TABLE}.phoneNo ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}.postalCode ;;
  }

  dimension: staff_id {
    type: string
    sql: ${TABLE}.staffID ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.stateCode ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name, investigation_status_type_name]
  }
}
