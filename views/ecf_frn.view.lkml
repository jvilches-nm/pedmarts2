view: ecf_frn {
  label: "ECF Funding Request"
  derived_table: {
     sql: select min(id) id, application_number, frn, service_type, total_qty, total_cost, product_type, product_make, product_model, connection_type, download, upload, firewall_included
from ecf.ecf_frn
group by
application_number, frn, service_type, total_qty, total_cost, product_type, product_make, product_model, connection_type, download, upload, firewall_included ;;
  }

  drill_fields: [application_number, frn, service_type, total_qty, total_cost]

  dimension: id {
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: application_number {
    type: number
    hidden: yes
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
