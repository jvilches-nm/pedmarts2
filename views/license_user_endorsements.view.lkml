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
    label: "Certification Area"
    description: "License Endorsement - Language Arts, Science, Mathematics, etc"
    sql: ${TABLE}.certArea ;;
  }

  dimension: cert_area_code {
    type: string
    label: "Certification Area Code"
    hidden: yes
    sql: ${TABLE}.certAreaCode ;;
  }

  dimension: cert_level {
    type: string
    label: "Certification Level"
    description: "Detailed cert level: "
    sql: ${TABLE}.certLevel ;;
  }

  dimension: cert_level_cat {
    type: string
    label: "Certification Level Category"
    description: "Level category: 0, 1, 2, 3"
    sql: ${TABLE}.certLevelCat ;;
  }

  dimension: cert_level_code {
    type: string
    label: "Certification Level Code"
    sql: ${TABLE}.certLevelCode ;;
  }

  dimension: cert_num {
    type: string
    label: "Certification Number"
    sql: ${TABLE}.certNum ;;
  }

  dimension: cert_status {
    type: string
    label: "Certification Status"
    sql: ${TABLE}.certStatus ;;
  }

  dimension: cert_type {
    type: string
    label: "Certification Type"
    description: "License type - ELEM: K-8, ADM: PK-12, SPECIALTY AREA, etc"
    sql: ${TABLE}.certType ;;
  }

  dimension: cert_type_cat {
    type: string
    label: "Certification Type Category"
    description: "License type category - Teacher, Administrator, etc."
    sql: ${TABLE}.certTypeCat ;;
  }

  dimension: cert_type_code {
    type: string
    label: "Certification Type Code"
    sql: ${TABLE}.certTypeCode ;;
  }

  dimension: exp_date {
    type: date
    label: "Certification Expiry Date"
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
    label: "License Discrepancy Index"
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
    label: "Certification Start Date"
    sql: ${TABLE}.startDate ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, last_name]
  }
}
