view: ecf_unmet_needs {
  label: "ECF Unmet Needs"
  sql_table_name: ecf.ecf_unmet_needs ;;
  drill_fields: [application_number]

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

  dimension: ecf_request_bb {
    type: string
    sql: ${TABLE}.ecf_request_bb ;;
  }

  dimension: ecf_request_both {
    type: string
    sql: ${TABLE}.ecf_request_both ;;
  }

  dimension: ecf_request_devices {
    type: string
    sql: ${TABLE}.ecf_request_devices ;;
  }

  dimension: narrative {
    type: string
    sql: ${TABLE}.narrative ;;
  }

  measure: provided_bb {
    type: sum
    sql: ${TABLE}.provided_bb ;;
  }

  measure: provided_both {
    type: sum
    sql: ${TABLE}.provided_both ;;
  }

  measure: provided_devices {
    type: sum
    sql: ${TABLE}.provided_devices ;;
  }

  measure: remaining_lack_bb {
    type: sum
    sql: ${TABLE}.remaining_lack_bb ;;
  }

  measure: remaining_lack_both {
    type: sum
    sql: ${TABLE}.remaining_lack_both ;;
  }

  measure: remaining_lack_devices {
    type: sum
    sql: ${TABLE}.remaining_lack_devices ;;
  }

  measure: start_lack_bb {
    type: sum
    sql: ${TABLE}.start_lack_bb ;;
  }

  measure: start_lack_both {
    type: sum
    sql: ${TABLE}.start_lack_both ;;
  }

  measure: start_lack_devices {
    type: sum
    sql: ${TABLE}.start_lack_devices ;;
  }

}
