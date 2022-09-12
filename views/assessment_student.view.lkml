view: assessment_student {
  sql_table_name: rea.assessment_student ;;

  dimension: agaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AGAID ;;
  }

  dimension: dist_code {
    type: number
    sql: ${TABLE}.DistCode ;;
  }

  dimension: distname {
    type: string
    sql: ${TABLE}.distname ;;
  }

  dimension: grade {
    type: number
    sql: ${TABLE}.Grade ;;
  }

  dimension: not_proficient {
    type: number
    sql: ${TABLE}.NotProficient ;;
  }

  dimension: period {
    type: string
    sql: ${TABLE}.Period ;;
  }

  dimension: pl {
    type: string
    sql: ${TABLE}.PL ;;
  }

  dimension: proficient {
    type: number
    sql: ${TABLE}.Proficient ;;
  }

  dimension: scale_score {
    type: number
    sql: ${TABLE}.Scale_Score ;;
  }

  dimension: schname {
    type: string
    sql: ${TABLE}.schname ;;
  }

  dimension: schnumb {
    type: number
    sql: ${TABLE}.schnumb ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: subtest {
    type: string
    sql: ${TABLE}.Subtest ;;
  }

  dimension: test_code {
    type: string
    sql: ${TABLE}.TestCode ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}.Test_Name ;;
  }

  dimension: testlang {
    type: string
    sql: ${TABLE}.Testlang ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [distname, schname, test_name]
  }
}
