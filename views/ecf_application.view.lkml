view: ecf_application {
  sql_table_name: ecf.ecf_application ;;

  dimension_group: application_certified {
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
    sql: ${TABLE}.application_certified ;;
  }

  dimension: application_nickname {
    type: string
    sql: ${TABLE}.application_nickname ;;
  }

  dimension: application_number {
    type: string
    primary_key: yes
    sql: ${TABLE}.application_number ;;
  }

  dimension: application_total_funding_request_amount {
    type: number
    sql: ${TABLE}.application_total_funding_request_amount ;;
  }

  dimension: application_total_student_count {
    type: number
    sql: ${TABLE}.application_total_student_count ;;
  }

  dimension_group: application_updated {
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
    sql: ${TABLE}.application_updated ;;
  }

  dimension: application_version {
    type: string
    sql: ${TABLE}.application_version ;;
  }

  dimension: billed_entity_number {
    type: number
    hidden: yes
    sql: ${TABLE}.billed_entity_number ;;
  }

  dimension: fcc_registration_number {
    type: number
    sql: ${TABLE}.fcc_registration_number ;;
  }

  dimension: lack_both_remaining {
    type: number
    sql: ${TABLE}.lack_both_remaining ;;
  }

  dimension: lack_both_start {
    type: number
    sql: ${TABLE}.lack_both_start ;;
  }

  dimension: lack_devices_remaining {
    type: number
    sql: ${TABLE}.lack_devices_remaining ;;
  }

  dimension: lack_devices_start {
    type: number
    sql: ${TABLE}.lack_devices_start ;;
  }

  dimension: lack_services_remaining {
    type: number
    sql: ${TABLE}.lack_services_remaining ;;
  }

  dimension: lack_services_start {
    type: number
    sql: ${TABLE}.lack_services_start ;;
  }

  dimension: provided_both {
    type: number
    sql: ${TABLE}.provided_both ;;
  }

  dimension: provided_devices {
    type: number
    sql: ${TABLE}.provided_devices ;;
  }

  dimension: provided_services {
    type: number
    sql: ${TABLE}.provided_services ;;
  }

  dimension: requested_both {
    type: number
    sql: ${TABLE}.requested_both ;;
  }

  dimension: requested_devices {
    type: number
    sql: ${TABLE}.requested_devices ;;
  }

  dimension: requested_services {
    type: number
    sql: ${TABLE}.requested_services ;;
  }

  dimension: urban_rural_status {
    type: string
    sql: ${TABLE}.urban_rural_status ;;
  }

  measure: count {
    type: count
    drill_fields: [application_nickname]
  }
}
