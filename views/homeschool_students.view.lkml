view: homeschool_students {
  sql_table_name: homeschool.homeschool_students ;;

  dimension_group: child_dob {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Child_DOB ;;
  }

  dimension: child_first_name {
    type: string
    sql: ${TABLE}.Child_First_Name ;;
  }

  dimension: child_id {
    type: number
    sql: ${TABLE}.Child_Id ;;
  }

  dimension: child_last_name {
    type: string
    sql: ${TABLE}.Child_Last_Name ;;
  }

  dimension: child_stars_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Child_StarsId ;;
  }

  dimension_group: date_entered {
    type: time
    hidden: yes
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date_Entered ;;
  }

  dimension: disenrll_other {
    type: string
    sql: ${TABLE}.Disenrll_other ;;
  }

  dimension: disenroll_district {
    type: string
    sql: ${TABLE}.Disenroll_District ;;
  }

  dimension_group: enroll_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Enroll_EndDate ;;
  }

  dimension_group: enroll_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Enroll_StartDate ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: grade {
    type: string
    sql: ${TABLE}.Grade ;;
  }

  dimension: ins_id {
    type: number
    sql: ${TABLE}.InsId ;;
  }

  dimension: is_current {
    type: number
    sql: ${TABLE}.Is_Current ;;
  }

  dimension: is_disenrolled {
    type: number
    sql: ${TABLE}.Is_Disenrolled ;;
  }

  dimension: optout_flag {
    type: string
    sql: ${TABLE}.optout_flag ;;
  }

  dimension: parent_address {
    type: string
    sql: ${TABLE}.Parent_Address ;;
  }

  dimension: parent_city {
    type: string
    sql: ${TABLE}.Parent_City ;;
  }

  dimension: parent_email {
    type: string
    sql: ${TABLE}.Parent_Email ;;
  }

  dimension: parent_first_name {
    type: string
    sql: ${TABLE}.Parent_First_Name ;;
  }

  dimension: parent_id {
    type: number
    hidden: yes
    sql: ${TABLE}.ParentId ;;
  }

  dimension: parent_last_name {
    type: string
    sql: ${TABLE}.Parent_Last_Name ;;
  }

  dimension: parent_phone {
    type: string
    sql: ${TABLE}.Parent_Phone ;;
  }

  dimension: parent_state {
    type: string
    sql: ${TABLE}.Parent_State ;;
  }

  dimension: parent_zip {
    type: string
    sql: ${TABLE}.Parent_Zip ;;
  }

  dimension: race {
    type: string
    sql: ${TABLE}.Race ;;
  }

  dimension: registration_id {
    type: number
    sql: ${TABLE}.Registration_Id ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}.School_Name ;;
  }

  dimension: school_year {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Year ;;
  }

  measure: count {
    type: count
    drill_fields: [child_first_name, child_last_name, school_name, parent_first_name, parent_last_name]
  }
}
