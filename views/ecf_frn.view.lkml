view: ecf_frn {
  sql_table_name: ecf.ecf_frn ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_number {
    type: number
    sql: ${TABLE}.application_number ;;
  }

  dimension: connection_type {
    type: string
    sql: ${TABLE}.connection_type ;;
  }

  dimension: download {
    type: string
    sql: ${TABLE}.download ;;
  }

  dimension: firewall_included {
    type: string
    sql: ${TABLE}.firewall_included ;;
  }

  dimension: frn {
    type: string
    sql: ${TABLE}.frn ;;
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

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  measure: total_cost {
    type: sum
    sql: ${TABLE}.total_cost ;;
  }

  measure: total_qty {
    type: sum
    sql: ${TABLE}.total_qty ;;
  }

  dimension: upload {
    type: string
    sql: ${TABLE}.upload ;;
  }

}
