view: vehicle_mileage {
  sql_table_name: stars.vehicle_mileage ;;

  dimension: daily_duration {
    type: number
    sql: ${TABLE}.DAILY_DURATION ;;
  }

  dimension: daily_mileage {
    type: number
    sql: ${TABLE}.DAILY_MILEAGE ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: mileage_type_cd {
    type: string
    sql: ${TABLE}.MILEAGE_TYPE_CD ;;
  }

  dimension: mileage_type_desc {
    type: string
    sql: ${TABLE}.MILEAGE_TYPE_DESC ;;
  }

  dimension: reporting_date_period_key {
    type: number
    sql: ${TABLE}.REPORTING_DATE_PERIOD_KEY ;;
  }

  dimension: road_type_cd {
    type: string
    sql: ${TABLE}.ROAD_TYPE_CD ;;
  }

  dimension: road_type_desc {
    type: string
    sql: ${TABLE}.ROAD_TYPE_DESC ;;
  }

  dimension: route_key {
    type: number
    sql: ${TABLE}.ROUTE_KEY ;;
  }

  dimension_group: school_year {
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
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: vehicle_snapshot_key {
    type: number
    sql: ${TABLE}.VEHICLE_SNAPSHOT_KEY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
