view: cte_students_clusters {
  sql_table_name: StateDB.cte_students_clusters ;;

  dimension: course_count {
    type: number
    sql: ${TABLE}.Course_Count ;;
  }

  dimension: cte_group_element_id {
    type: number
    sql: ${TABLE}.CTE_Group_Element_ID ;;
  }

  dimension: cte_group_student_id {
    type: number
    sql: ${TABLE}.CTE_Group_Student_ID ;;
  }

  dimension: district_code {
    type: string
    sql: ${TABLE}.District_Code ;;
  }

  dimension: element_column_name {
    type: string
    sql: ${TABLE}.Element_Column_Name ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.Element_Name ;;
  }

  dimension: group_grade_average {
    type: number
    sql: ${TABLE}.Group_Grade_Average ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension_group: school_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.School_Year ;;
  }

  dimension: student_id {
    type: string
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: version_number {
    type: number
    sql: ${TABLE}.Version_Number ;;
  }

  measure: count {
    type: count
    drill_fields: [element_name, element_column_name]
  }
}
