include: "student_base.view"
view: student_snapshot {
  extends: [student_base]

  dimension: school_year_end_date {
    type: date
    hidden: yes
    description: "The last day in the school year"
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    label: "School Year"
    description: "The two calendar years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_Year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_Year) as varchar) ;;
  }


}
