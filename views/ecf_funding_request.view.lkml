view: ecf_funding_request {
  sql_table_name: ecf.ecf_funding_request ;;

  dimension: application_number {
    type: string
    hidden: yes
    sql: ${TABLE}.application_number ;;
  }

  dimension: fcdl_comment {
    type: string
    sql: ${TABLE}.fcdl_comment ;;
  }

  dimension: funding_narrative {
    type: string
    sql: ${TABLE}.funding_narrative ;;
  }

  dimension: funding_request_nickname {
    type: string
    sql: ${TABLE}.funding_request_nickname ;;
  }

  dimension: funding_request_number {
    type: string
    primary_key: yes
    sql: ${TABLE}.funding_request_number ;;
  }

  dimension: funding_request_status {
    type: string
    sql: ${TABLE}.funding_request_status ;;
  }

  dimension: funding_total_amount_approved {
    type: number
    sql: ${TABLE}.funding_total_amount_approved ;;
  }

  dimension: funding_total_amount_requested {
    type: number
    sql: ${TABLE}.funding_total_amount_requested ;;
  }

  dimension_group: service_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.service_end_date ;;
  }

  dimension: service_provider {
    type: string
    sql: ${TABLE}.service_provider ;;
  }

  dimension_group: service_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.service_start_date ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  measure: count {
    type: count
    drill_fields: [funding_request_nickname]
  }
}
