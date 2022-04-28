view: ecf_application_data {
  label: "ECF Applications"
  sql_table_name: ecf.ecf_application_data ;;
  drill_fields: [application_number, total_funding_request]

  dimension: id {
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_number {
    type: string
    primary_key: yes
    sql: ${TABLE}.app_number ;;
  }

  dimension: ben {
    type: string
    hidden: yes
    sql: ${TABLE}.ben ;;
  }

  measure: total_funding_request {
    type: sum
    sql: ${TABLE}.total_funding_request ;;
  }

  measure: count {
    type: count
    drill_fields: [application_number]
  }
}
