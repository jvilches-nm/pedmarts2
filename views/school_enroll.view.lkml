view: school_enroll {
  sql_table_name: stars.school_enroll ;;

  dimension: district_code {
    type: string
    hidden: yes
    sql: cast(${TABLE}.DISTRICT_CODE as int);;
  }

  dimension: effective_date {
    type: date
    sql: ${TABLE}."effective date" ;;
  }

  dimension: enroll_code {
    type: string
    sql: ${TABLE}.ENROLL_CODE ;;
  }

  dimension: withdrawal {
    type: string
    sql: case when ${TABLE}.ENROLL_CODE in ('W1', 'W2', 'W4','W8', 'W11','W12','W13','W14','W15','W16','W17','W18', 'W21', 'W22', 'W24','W81','W3','W5', 'W6', 'W9','WD', 'WG','D1','D2')
              then 'yes' else 'no' end;;
  }

  dimension: enroll_desc {
    type: string
    sql: ${TABLE}.ENROLL_DESC ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: cast(${TABLE}.LOCATION_ID as int);;
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
