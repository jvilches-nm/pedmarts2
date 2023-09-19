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

  dimension: enroll_key  {
    hidden: yes
    type: string
    primary_key: yes
    sql: ${TABLE}.DISTRICT_code + '-' + ${TABLE}.location_id + '-' + ${TABLE}.student_id + '-' + CONVERT(VARCHAR(8),${TABLE}."effective date", 112) ;;
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

measure: e1 {
  type: sum
  label: "E-1"
  sql: case ${enroll_code} when 'E1' then 1 else 0 end ;;
}

  measure: e2 {
    type: sum
    label: "E-2"
    sql: case ${enroll_code} when 'E2' then 1 else 0 end ;;
  }

  measure: e3 {
    type: sum
    label: "E-3"
    sql: case ${enroll_code} when 'E3' then 1 else 0 end ;;
  }

  measure: r1 {
    type: sum
    label: "R-1"
    sql: case ${enroll_code} when 'R1' then 1 else 0 end ;;
  }

  measure: r2 {
    type: sum
    label: "R-2"
    sql: case ${enroll_code} when 'R2' then 1 else 0 end ;;
  }

  measure: r3 {
    type: sum
    label: "R-3"
    sql: case ${enroll_code} when 'R3' then 1 else 0 end ;;
  }

  measure: w1 {
    type: sum
    label: "W-1"
    sql: case ${enroll_code} when 'W1' then 1 else 0 end ;;
  }

  measure: w2 {
    type: sum
    label: "W-2"
    sql: case ${enroll_code} when 'W2' then 1 else 0 end ;;
  }

  measure: w3 {
    type: sum
    label: "W-3"
    sql: case ${enroll_code} when 'W3' then 1 else 0 end ;;
  }

  measure: w4 {
    type: sum
    label: "W-4"
    sql: case ${enroll_code} when 'W4' then 1 else 0 end ;;
  }

  measure: w5 {
    type: sum
    label: "W-5"
    sql: case ${enroll_code} when 'W5' then 1 else 0 end ;;
  }

  measure: w6 {
    type: sum
    label: "W-6"
    sql: case ${enroll_code} when 'W6' then 1 else 0 end ;;
  }

  measure: w7 {
    type: sum
    label: "W-7"
    sql: case ${enroll_code} when 'W7' then 1 else 0 end ;;
  }

  measure: w8 {
    type: sum
    label: "W-8"
    sql: case ${enroll_code} when 'W8' then 1 else 0 end ;;
  }

  measure: w9 {
    type: sum
    label: "W-9"
    sql: case ${enroll_code} when 'W9' then 1 else 0 end ;;
  }

  measure: w10 {
    type: sum
    label: "W-10"
    sql: case ${enroll_code} when 'W10' then 1 else 0 end ;;
  }

  measure: w19 {
    type: sum
    label: "W-19"
    sql: case ${enroll_code} when 'W19' then 1 else 0 end ;;
  }

  measure: w20 {
    type: sum
    label: "W-20"
    sql: case ${enroll_code} when 'W20' then 1 else 0 end ;;
  }

  measure: w81 {
    type: sum
    label: "W-81"
    sql: case ${enroll_code} when 'W81' then 1 else 0 end ;;
  }

  measure: wD {
    type: sum
    label: "W-D"
    sql: case ${enroll_code} when 'WD' then 1 else 0 end ;;
  }

  measure: wDO {
    type: sum
    label: "W-DO"
    sql: case ${enroll_code} when 'WDO' then 1 else 0 end ;;
  }

  measure: wg {
    type: sum
    label: "W-G"
    sql: case ${enroll_code} when 'WG' then 1 else 0 end ;;
  }

  measure: wC {
    type: sum
    label: "W-C"
    sql: case ${enroll_code} when 'WC' then 1 else 0 end ;;
  }

  measure: D1 {
    type: sum
    label: "D-1"
    sql: case ${enroll_code} when 'D1' then 1 else 0 end ;;
  }

  measure: D2 {
    type: sum
    label: "D-2"
    sql: case ${enroll_code} when 'D2' then 1 else 0 end ;;
  }

  measure: D3 {
    type: sum
    label: "D-3"
    sql: case ${enroll_code} when 'D3' then 1 else 0 end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
