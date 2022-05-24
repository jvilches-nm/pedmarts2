view: ecf_billed_entity {
  sql_table_name: ecf.ecf_billed_entity ;;
  label: "ECF Billed Entity"

  dimension: billed_entity_number {
    type: number
    primary_key: yes
    sql: ${TABLE}.billed_entity_number ;;
  }

  dimension: district_id {
    type: string
    sql: ${TABLE}.district_id ;;
  }

  dimension: ecf_applicant_name {
    type: string
    sql: ${TABLE}.ecf_applicant_name ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.location_id ;;
  }

  dimension: urban_rural_status {
    type: string
    sql: ${TABLE}.urban_rural_status ;;
  }

  measure: count {
    type: count
    drill_fields: [ecf_applicant_name]
  }
}
