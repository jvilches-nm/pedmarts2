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

  dimension: firewall {
    type: string
    sql: ${TABLE}.firewall ;;
  }

  measure: funding_item_total_cost {
    type: sum
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

  measure: monthly_quantity {
    type: sum
    hidden: yes
    sql: ${TABLE}.monthly_quantity ;;
  }

  measure: monthly_unit_cost {
    type: sum
    hidden: yes
    value_format: "$#,##0.00"
    sql: ${TABLE}.monthly_unit_cost ;;
  }

  dimension: months_of_service {
    type: number
    hidden: yes
    sql: ${TABLE}.months_of_service ;;
  }

  dimension: product_equipment_make {
    type: string
    label: "Product or Equipment Make"
    sql: case when ${TABLE}.network_equipment_type is null then ${TABLE}.product_make else ${TABLE}.network_equipment_type end ;;
  }

  dimension: product_equipment_model {
    type: string
    label: "Product or Equipment Model"
    sql: case when ${TABLE}.network_equipment_make_model is null then ${TABLE}.product_model else ${TABLE}.network_equipment_make_model end ;;
  }

  dimension: product_connection_type {
    type: string
    label: "Product or Connection Type"
    sql: case when ${TABLE}.connection_type is null then ${TABLE}.product_type else ${TABLE}.connection_type end;;
  }

  measure: one_time_unit_cost {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.one_time_unit_cost ;;
  }

  measure: one_time_unit_quantity {
    type: sum
    hidden: yes
    sql: ${TABLE}.one_time_unit_quantity ;;
  }

  measure: product_service_quantity {
    type: sum
    sql: COALESCE(${TABLE}.one_time_unit_quantity,0)+COALESCE(${TABLE}.monthly_quantity,0) ;;
  }

  dimension: product_make {
    type: string
    hidden: yes
    sql: ${TABLE}.product_make ;;
  }

  dimension: product_model {
    type: string
    hidden: yes
    sql: ${TABLE}.product_model ;;
  }

  dimension: product_type {
    type: string
    hidden: yes
    sql: ${TABLE}.product_type ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
