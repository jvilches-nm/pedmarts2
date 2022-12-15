view: assessment_rea {
  sql_table_name: rea.assessment_student ;;

  dimension: agaid {
    type: number
    sql: ${TABLE}.AGAID ;;
  }

  dimension: dist_code {
    type: number
    hidden: yes
    sql: ${TABLE}.DistCode ;;
  }

  dimension: distname {
    type: string
    hidden: yes
    sql: ${TABLE}.distname ;;
  }

  dimension: grade {
    type: number
    label: "Student Grade"
    sql: ${TABLE}.Grade ;;
  }

  dimension: period {
    type: string
    hidden: yes
    sql: ${TABLE}.Period ;;
  }

  dimension: pl {
    type: string
    label: "Proficiency Level"
    sql: ${TABLE}.PL ;;
  }

  dimension: proficient_flag {
    type: string
    description: "Student is proficient - yes/no"
    sql: case when ${TABLE}.Proficient=1 then 'Yes' else 'No' end ;;
  }

  measure: proficient {
    type: sum
    sql: ${TABLE}.Proficient ;;
  }

  measure: not_proficient {
    type: sum
    sql: ${TABLE}.NotProficient ;;
  }

  dimension: scale_score {
    type: number
    label: "Scaled Score"
    sql: ${TABLE}.Scale_Score ;;
  }

  dimension: schname {
    type: string
    hidden: yes
    sql: ${TABLE}.schname ;;
  }

  dimension: schnumb {
    type: number
    hidden: yes
    sql: ${TABLE}.schnumb ;;
  }

  dimension: student_id {
    type: number
    hidden: yes
    sql: ${TABLE}.Student_ID ;;
  }

  dimension: subtest {
    type: string
    label: "Subtest"
    sql: ${TABLE}.Subtest ;;
  }

  dimension: test_code {
    type: string
    label: "Test Code"
    sql: ${TABLE}.TestCode ;;
  }

  dimension: test_name {
    type: string
    sql: ${TABLE}.Test_Name ;;
  }

  dimension: testlang {
    type: string
    label: "Test Language Code"
    sql: ${TABLE}.Testlang ;;
  }

  dimension: year {
    type: number
    value_format: "####"
    sql: ${TABLE}.Year ;;
  }

  measure: assessment_count {
    type: count
    hidden: yes
    drill_fields: [distname, schname, test_name]
  }
}
