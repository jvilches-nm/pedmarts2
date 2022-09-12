view: proficiencies {
  sql_table_name: rea.Proficiencies ;;

  dimension: dist_name {
    type: string
    sql: ${TABLE}.DistName ;;
  }

  dimension: district_code {
    type: number
    sql: ${TABLE}.District_Code ;;
  }

  dimension: group_keyword {
    type: string
    sql: ${TABLE}.Group_Keyword ;;
  }

  dimension: location_code {
    type: string
    sql: ${TABLE}.LocationCode ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.Metric ;;
  }

  dimension: proficiency {
    type: number
    sql: ${TABLE}.Proficiency ;;
  }

  dimension: sch_name {
    type: string
    sql: ${TABLE}.SchName ;;
  }

  dimension: school_number {
    type: number
    sql: ${TABLE}.SchoolNumber ;;
  }

  dimension: sy {
    type: number
    sql: ${TABLE}.SY ;;
  }

  measure: count {
    type: count
    drill_fields: [sch_name, dist_name]
  }
}
