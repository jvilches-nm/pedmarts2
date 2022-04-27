view: ecf_ben {
  label: "Emergency Connectivity Fund"
  sql_table_name: ecf.ecf_ben ;;
  drill_fields: [district_name, ctc_category]

  dimension: id {
    hidden: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ben {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.ben ;;
  }

  dimension: ctc_category {
    type: string
    sql: ${TABLE}.ctc_category ;;
  }

  dimension: district_code {
    type: string
    sql: right('000' + ${TABLE}.district_id, 3) ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: location_code {
    type: string
    sql: right('000' + ${TABLE}.location_id, 3) ;;
  }

  dimension: student_count {
    type: number
    sql: ${TABLE}.student_count ;;
  }

  measure: count {
    type: count
    drill_fields: [id, district_name]
  }
}
