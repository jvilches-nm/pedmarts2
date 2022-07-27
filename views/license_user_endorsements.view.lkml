view: license_user_endorsements {
  sql_table_name: licensure.license_user_endorsements ;;

  dimension: background_discrepancy_index {
    type: string
    sql: ${TABLE}.BackgroundDiscrepancyIndex ;;
  }

  dimension: background_status {
    type: string
    sql: ${TABLE}.backgroundStatus ;;
  }

  dimension: cert_area {
    type: string
    sql: ${TABLE}.certArea ;;
  }

  dimension: cert_area_code {
    type: string
    sql: ${TABLE}.certAreaCode ;;
  }

  dimension: cert_level {
    type: string
    sql: ${TABLE}.certLevel ;;
  }

  dimension: cert_level_cat {
    type: string
    sql: ${TABLE}.certLevelCat ;;
  }

  dimension: cert_level_code {
    type: string
    sql: ${TABLE}.certLevelCode ;;
  }

  dimension: cert_num {
    type: string
    sql: ${TABLE}.certNum ;;
  }

  dimension: cert_status {
    type: string
    sql: ${TABLE}.certStatus ;;
  }

  dimension: cert_type {
    type: string
    sql: ${TABLE}.certType ;;
  }

  dimension: cert_type_cat {
    type: string
    sql: ${TABLE}.certTypeCat ;;
  }

  dimension: cert_type_code {
    type: string
    sql: ${TABLE}.certTypeCode ;;
  }

  dimension: exp_date {
    type: date
    sql: ${TABLE}.expDate ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.firstName ;;
  }

  dimension: investigation_status {
    type: string
    sql: ${TABLE}.investigationStatus ;;
  }

  dimension: last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.lastName ;;
  }

  dimension: lic_discrepancy_index {
    type: string
    sql: ${TABLE}.LicDiscrepancyIndex ;;
  }

  dimension: license_updated_on {
    type: date
    sql: ${TABLE}.licenseUpdatedOn ;;
  }

  dimension: mi {
    type: string
    hidden: yes
    sql: ${TABLE}.MI ;;
  }

  dimension: staff_id {
    type: string
    hidden: yes
    sql: ${TABLE}.staffID ;;
  }

  dimension: start_date {
    type: date
    sql: ${TABLE}.startDate ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}