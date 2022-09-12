view: schools_csi {
  sql_table_name: rea.schools_csi ;;

  dimension: agaid {
    type: string
    sql: ${TABLE}.AGAID ;;
  }

  dimension: csi {
    type: string
    sql: ${TABLE}.CSI ;;
  }

  dimension: csientry_reason {
    type: string
    sql: ${TABLE}.CSIEntryReason ;;
  }

  dimension: csiexit_year {
    type: string
    sql: ${TABLE}.CSIExitYear ;;
  }

  dimension: dist_code {
    type: string
    sql: ${TABLE}.DistCode ;;
  }

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: hs {
    type: string
    sql: ${TABLE}.HS ;;
  }

  dimension: level {
    type: string
    sql: ${TABLE}.Level ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: sch_numb {
    type: number
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: sch_type {
    type: string
    sql: ${TABLE}.SchType ;;
  }

  dimension: sy {
    type: number
    sql: ${TABLE}.SY ;;
  }

  measure: count {
    type: count
    drill_fields: [dist_name, sch_name]
  }
}
