view: ecf_funding_request {
  sql_table_name: ecf.ecf_funding_request ;;
  label: "ECF Funding Request"
  dimension: application_number {
    type: string
    hidden: yes
    sql: ${TABLE}.application_number ;;
  }

  dimension: fcdl_comment {
    type: string
    sql: ${TABLE}.fcdl_comment ;;
  }

  dimension: funding_narrative {
    type: string
    sql: ${TABLE}.funding_narrative ;;
  }

  dimension: funding_request_nickname {
    type: string
    sql: ${TABLE}.funding_request_nickname ;;
  }

  dimension: teacher_request {
    type: string
    description: "Funding request is for teachers - Yes/No"
    sql: case when funding_request_nickname LIKE '%teacher%' then 'Yes'
              when funding_request_nickname LIKE '%instructor%' then 'Yes'
              when funding_request_nickname LIKE '%educator%' then 'Yes'
              when funding_request_nickname LIKE '%professor%' then 'Yes'
              when funding_request_nickname LIKE '%faculty%' then 'Yes'
              when funding_request_nickname LIKE '%staff%' then 'Yes'
              when funding_narrative LIKE '%teacher%' then 'Yes'
              when funding_narrative LIKE '%instructor%' then 'Yes'
              when funding_narrative LIKE '%educator%' then 'Yes'
              when funding_narrative LIKE '%professor%' then 'Yes'
              when funding_narrative LIKE '%faculty%' then 'Yes'
              when funding_narrative LIKE '%staff%' then 'Yes'
              else 'No' end ;;
  }

  dimension: student_request {
    type: string
    description: "Funding request is for students - Yes/No"
    sql:  case when funding_request_nickname LIKE '%student%' then 'Yes'
               when funding_narrative like '%student%' then 'Yes'
               else 'No' end;;
  }

  dimension: funding_request_number {
    type: string
    primary_key: yes
    sql: ${TABLE}.funding_request_number ;;
  }

  dimension: funding_request_status {
    type: string
    sql: ${TABLE}.funding_request_status ;;
  }

  measure: funding_total_amount_approved {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.funding_total_amount_approved ;;
  }

  measure: funding_total_amount_requested {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}.funding_total_amount_requested ;;
  }


  measure: service_funding_amount_requested {
    type: sum
    value_format: "$#,##0.00"
    sql: case when ${TABLE}.service_type='Services' then ${TABLE}.funding_total_amount_requested else 0.0 end;;
  }

  measure: device_funding_amount_requested {
    type: sum
    value_format: "$#,##0.00"
    sql: case when ${TABLE}.service_type='Equipment' then ${TABLE}.funding_total_amount_requested else 0.0 end;;
  }

  measure: service_funding_amount_approved {
    type: sum
    value_format: "$#,##0.00"
    sql: case when ${TABLE}.service_type='Services' then ${TABLE}.funding_total_amount_approved else 0.0 end;;
  }

  measure: device_funding_amount_approved {
    type: sum
    value_format: "$#,##0.00"
    sql: case when ${TABLE}.service_type='Equipment' then ${TABLE}.funding_total_amount_approved else 0.0 end;;
  }


  dimension_group: service_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.service_end_date ;;
  }

  dimension: service_provider {
    type: string
    sql: ${TABLE}.service_provider ;;
  }

  dimension_group: service_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.service_start_date ;;
  }

  dimension: service_type {
    type: string
    sql: ${TABLE}.service_type ;;
  }

  measure: count {
    type: count
    drill_fields: [funding_request_nickname]
  }
}
