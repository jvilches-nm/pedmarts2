view: school_enroll {
  sql_table_name: stars.school_enroll ;;

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.DISTRICT_CODE ;;
  }

  dimension: effective_date {
    type: date
    sql: ${TABLE}."effective date" ;;
  }

  dimension: enroll_code {
    type: string
    sql: ${TABLE}.ENROLL_CODE ;;
  }

  dimension: enroll_desc {
    type: string
    sql: ${TABLE}.ENROLL_DESC ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.LOCATION_ID ;;
  }

  dimension: school_year_end_date {
    type: date
    hidden: yes
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}.STUDENT_ID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
