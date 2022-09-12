view: grad_student {
  sql_table_name: rea.grad_student ;;

  dimension: agaid {
    type: string
    sql: ${TABLE}.AGAID ;;
  }

  dimension: cohort {
    type: string
    sql: ${TABLE}.Cohort ;;
  }

  dimension: cohort_sy {
    type: number
    sql: ${TABLE}.Cohort_SY ;;
  }

  dimension: dist_code {
    type: number
    sql: ${TABLE}.DistCode ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: graduated_state_count {
    type: number
    sql: ${TABLE}.Graduated_StateCount ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: location_id {
    type: string
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: num_snapshots {
    type: number
    sql: ${TABLE}.NumSnapshots ;;
  }

  dimension: outcome {
    type: string
    sql: ${TABLE}.Outcome ;;
  }

  dimension: outcome_desc {
    type: string
    sql: ${TABLE}.Outcome_Desc ;;
  }

  dimension: saunits {
    type: string
    sql: ${TABLE}.SAUnits ;;
  }

  dimension: sch_numb {
    type: number
    sql: ${TABLE}.SchNumb ;;
  }

  dimension: shared_accountability_grad_units {
    type: number
    sql: ${TABLE}.SharedAccountability_GradUnits ;;
  }

  dimension: shared_accountability_non_grad {
    type: number
    sql: ${TABLE}.SharedAccountability_NonGrad ;;
  }

  dimension: state_excluded {
    type: number
    sql: ${TABLE}.State_Excluded ;;
  }

  dimension: state_nongrad {
    type: number
    sql: ${TABLE}.State_Nongrad ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}.StudentID ;;
  }

  dimension: total_snapshots {
    type: number
    sql: ${TABLE}.TotalSnapshots ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}
