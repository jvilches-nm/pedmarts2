view: ecf_frn_narrative {
  sql_table_name: ecf.ecf_frn_narrative ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: application_number {
    type: string
    hidden: yes
    sql: ${TABLE}.app_number ;;
  }

  dimension: district_name {
    type: string
    hidden: yes
    sql: ${TABLE}.district_name ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.end_date ;;
  }

  dimension: frn {
    type: string
    hidden: yes
    sql: ${TABLE}.frn ;;
  }

  dimension: narrative {
    type: string
    sql: ${TABLE}.narrative ;;
  }

  dimension: service_provider {
    type: string
    sql: ${TABLE}.service_provider ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.start_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, district_name]
  }
}
