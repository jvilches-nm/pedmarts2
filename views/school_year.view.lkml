view: school_year {
  derived_table: {
    sql: select distinct year_number, school_year, report_school_year from stars.period where district_key='35000999' and marking_period in ('40D', '80D', '120D', 'EOY');;
  }

  dimension: school_year {
    type: string
    description: "The two calendar years that the school year spans."
    sql: ${TABLE}.REPORT_SCHOOL_YEAR ;;
  }

  dimension: school_year_number {
    type: number
    description: "The ending calendar year for the school year."
    sql: ${TABLE}.YEAR_NUMBER ;;
  }

  dimension: school_year_end_date {
    type: date
    primary_key: yes
    description: "Last day of the school year"
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

}
