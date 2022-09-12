view: grad_data {
  sql_table_name: rea.grad_data ;;

  dimension: aigid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AIGID ;;
  }

  dimension: demographic {
    type: string
    sql: ${TABLE}.Demographic ;;
  }

  dimension: dist_code {
    type: number
    sql: ${TABLE}.DistCode ;;
  }

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: location_id {
    type: number
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  dimension: sch_numb {
    type: number
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: schname {
    type: string
    sql: ${TABLE}.Schname ;;
  }

  dimension: sy {
    type: number
    sql: ${TABLE}.SY ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, schname]
  }
}
