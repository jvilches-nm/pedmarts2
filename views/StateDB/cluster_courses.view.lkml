view: cluster_courses {
  sql_table_name: StateDB.cluster_courses ;;

  dimension: cluster {
    type: string
    sql: ${TABLE}.Cluster ;;
  }

  dimension: cluster_courses_action {
    type: string
    sql: ${TABLE}.Cluster_Courses_Action ;;
  }

  dimension: cluster_courses_status {
    type: string
    sql: ${TABLE}.Cluster_Courses_Status ;;
  }

  dimension: course_id {
    type: string
    sql: ${TABLE}.Course_ID ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Date Created" ;;
  }

  dimension: duplicate_course_id {
    type: string
    sql: ${TABLE}.Duplicate_Course_ID ;;
  }

  dimension: non_trad {
    type: string
    sql: ${TABLE}.NonTrad ;;
  }

  dimension_group: school_year {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension: wild_card {
    type: string
    sql: ${TABLE}.Wild_Card ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
