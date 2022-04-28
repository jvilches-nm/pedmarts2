view: ecf_ben {
  label: "ECF"
  sql_table_name: ecf.ecf_ben ;;
  drill_fields: [ecf_district_name, ctc_category]

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

  dimension: ecf_district_code {
    type: string
    sql: right('000' + cast(${TABLE}.district_id as varchar), 3) ;;
  }

  dimension: ecf_district_name {
    type: string
    sql: ${TABLE}.district_name ;;
  }

  dimension: ecf_location_code {
    type: string
    sql: right('000' + cast(${TABLE}.location_id as varchar), 3) ;;
  }

  measure: ecf_student_count {
    type: sum
    sql: ${TABLE}.student_count ;;
  }

}
