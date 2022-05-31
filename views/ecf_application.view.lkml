view: ecf_application {
  sql_table_name: ecf.ecf_application ;;
  label: "ECF Application"

  drill_fields: [application_number, application_certified_date, ecf_funding_request.funding_request_nickname, ecf_funding_request.funding_narrative, ecf_funding_request.teacher_request,
    ecf_funding_requst.student_request, ecf_funding_line_item.funding_line_item_number,
    ecf_funding_line_item.funding_item_total_cost,
    ecf_funding_line_item.product_service_quantity,
    ecf_funding_line_item.product_connection_type,
    ecf_funding_line_item.product_equipment_make,
    ecf_funding_line_item.product_equipment_model]


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

  dimension: snapshot_period {
    type: string
    sql: case when MONTH(${TABLE}.application_certified) in (9, 10, 11) then '40 Day'
              when MONTH(${TABLE}.application_certified) in (12, 1, 2) then '80 Day'
              when MONTH(${TABLE}.application_certified) in (3, 4, 5) then '120 Day'
              when MONTH(${TABLE}.application_certified) in (6, 7, 8) then 'EOY' else '' end;;
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

  measure: application_total_funding_request_amount {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.application_total_funding_request_amount ;;
  }

  measure: application_total_student_count {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
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

  measure: lack_both_remaining {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_both_remaining ;;
  }

  measure: lack_both_start {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_both_start ;;
  }

  measure: lack_devices_remaining {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_devices_remaining ;;
  }

  measure: lack_devices_start {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_devices_start ;;
  }

  measure: lack_services_remaining {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_services_remaining ;;
  }

  measure: lack_services_start {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.lack_services_start ;;
  }

  measure: provided_both {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.provided_both ;;
  }

  measure: provided_devices {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.provided_devices ;;
  }

  measure: provided_services {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.provided_services ;;
  }

  measure: requested_both {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.requested_both ;;
  }

  measure: requested_devices {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
    sql: ${TABLE}.requested_devices ;;
  }

  measure: requested_services {
    type: sum_distinct
    sql_distinct_key: ${billed_entity_number} ;;
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
