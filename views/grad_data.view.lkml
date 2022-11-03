view: grad_data {
  sql_table_name: rea.grad_data ;;
  label: "Graduation Summary"

  dimension: aigid {
    type: number
    hidden: yes
    value_format_name: id
    sql: ${TABLE}.AIGID ;;
  }

  dimension: demographic {
    type: string
    description: "Student demographic being measured"
    sql: ${TABLE}.Demographic ;;
  }

  dimension: dist_code {
    type: number
    hidden: yes
    sql: ${TABLE}.DistCode ;;
  }

  dimension: dist_name {
    type: string
    label: "District Name"
    sql: ${TABLE}.DistName ;;
  }

  dimension: location_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: metric {
    type: string
    label: "Graduation Metric"
    description: "Graduation metric - rate, graduates (numerator), cohort size (denominator)"
    sql: ${TABLE}.Metric ;;
  }
  dimension: sch_numb {
    type: number
    hidden: yes
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: schname {
    type: string
    label: "School Name"
    sql: ${TABLE}.Schname ;;
  }

  dimension: sy {
    type: string
    label: "School Year"
    description: "Last calendar year of the school year"
    sql: ${TABLE}.SY ;;
  }

  measure: value {
    type: max
    sql: ${TABLE}.Value ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: [dist_name, schname]
  }
}
