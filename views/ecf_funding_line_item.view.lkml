view: ecf_funding_line_item {
  sql_table_name: ecf.ecf_funding_line_item ;;
  label: "ECF Funding Request Line Item"

  dimension: bandwidth_download {
    type: number
    sql: ${TABLE}.bandwidth_download ;;
  }

  dimension: bandwidth_upload {
    type: number
    sql: ${TABLE}.bandwidth_upload ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.connection_type ;;
  }

  dimension: firewall {
    type: string
    sql: ${TABLE}.firewall ;;
  }

  dimension: funding_item_total_cost {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.funding_item_total_cost ;;
  }

  dimension: funding_line_item_number {
    type: string
    primary_key: yes
    sql: ${TABLE}.funding_line_item_number ;;
  }

  dimension: funding_request_number {
    type: string
    hidden: yes
    sql: ${TABLE}.funding_request_number ;;
  }

  dimension: monthly_quantity {
    type: number
    sql: ${TABLE}.monthly_quantity ;;
  }

  dimension: monthly_unit_cost {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.monthly_unit_cost ;;
  }

  dimension: months_of_service {
    type: number
    sql: ${TABLE}.months_of_service ;;
  }

  dimension: network_equipment_make_model {
    type: string
    sql: ${TABLE}.network_equipment_make_model ;;
  }

  dimension: network_equipment_type {
    type: string
    sql: ${TABLE}.network_equipment_type ;;
  }

  dimension: one_time_unit_cost {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.one_time_unit_cost ;;
  }

  dimension: one_time_unit_quantity {
    type: number
    sql: ${TABLE}.one_time_unit_quantity ;;
  }

  dimension: product_make {
    type: string
    sql: ${TABLE}.product_make ;;
  }

  dimension: product_model {
    type: string
    sql: ${TABLE}.product_model ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
