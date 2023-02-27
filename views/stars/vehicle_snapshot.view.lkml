view: vehicle_snapshot {
  sql_table_name: stars.vehicle_snapshot ;;

  dimension: body_manufacturer {
    type: string
    sql: ${TABLE}.BODY_MANUFACTURER ;;
  }

  dimension: body_manufacturer_code {
    type: string
    sql: ${TABLE}.BODY_MANUFACTURER_CODE ;;
  }

  dimension: chassis_code {
    type: string
    sql: ${TABLE}.CHASSIS_CODE ;;
  }

  dimension: days_in_use_nbr {
    type: number
    sql: ${TABLE}.DAYS_IN_USE_NBR ;;
  }

  dimension: district_key {
    type: number
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: eligible_students_not_in_stars {
    type: number
    sql: ${TABLE}.Eligible_Students_not_in_STARS ;;
  }

  dimension: essential_deadhead_paved {
    type: number
    sql: ${TABLE}.Essential_Deadhead_Paved ;;
  }

  dimension: essential_deadhead_unimproved {
    type: number
    sql: ${TABLE}.Essential_Deadhead_Unimproved ;;
  }

  dimension: essential_deadhead_unpaved {
    type: number
    sql: ${TABLE}.Essential_Deadhead_Unpaved ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.FUEL_TYPE ;;
  }

  dimension: gross_vehicle_weight_rating {
    type: number
    sql: ${TABLE}.GROSS_VEHICLE_WEIGHT_RATING ;;
  }

  dimension_group: last_inspection_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LAST_INSPECTION_DT ;;
  }

  dimension: license_plate_number {
    type: string
    sql: ${TABLE}.LICENSE_PLATE_NUMBER ;;
  }

  dimension: live_paved {
    type: number
    sql: ${TABLE}.Live_Paved ;;
  }

  dimension: live_unimporoved {
    type: number
    sql: ${TABLE}.Live_Unimporoved ;;
  }

  dimension: live_unpaved {
    type: number
    sql: ${TABLE}.Live_Unpaved ;;
  }

  dimension: manufacture_year {
    type: number
    sql: ${TABLE}.MANUFACTURE_YEAR ;;
  }

  dimension: odometer_mileage {
    type: number
    sql: ${TABLE}.ODOMETER_MILEAGE ;;
  }

  dimension_group: odometer_reading_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ODOMETER_READING_DT ;;
  }

  dimension: ownership_type_cd {
    type: string
    sql: ${TABLE}.OWNERSHIP_TYPE_CD ;;
  }

  dimension: per_capita_feeder_annual_mileage {
    type: number
    sql: ${TABLE}.Per_Capita_Feeder_Annual_Mileage ;;
  }

  dimension: per_capita_feeder_routes {
    type: number
    sql: ${TABLE}.Per_Capita_Feeder_Routes ;;
  }

  dimension: projected_students_next_year {
    type: number
    sql: ${TABLE}.Projected_Students_Next_Year ;;
  }

  dimension: registered_owner {
    type: string
    sql: ${TABLE}.Registered_Owner ;;
  }

  dimension_group: reporting {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REPORTING_DATE ;;
  }

  dimension: route_long_description {
    type: string
    sql: ${TABLE}.Route_Long_Description ;;
  }

  dimension: school_bus_assistants_employed {
    type: number
    sql: ${TABLE}.School_Bus_Assistants_Employed ;;
  }

  dimension_group: school_year {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.SCHOOL_YEAR ;;
  }

  dimension: seating_capacity {
    type: number
    sql: ${TABLE}.SEATING_CAPACITY ;;
  }

  dimension: special_lift_equip_ind {
    type: string
    sql: ${TABLE}.SPECIAL_LIFT_EQUIP_IND ;;
  }

  dimension: vehicle_contractor_cd {
    type: string
    sql: ${TABLE}.VEHICLE_CONTRACTOR_CD ;;
  }

  dimension: vehicle_contractor_desc {
    type: string
    sql: ${TABLE}.VEHICLE_CONTRACTOR_DESC ;;
  }

  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.VEHICLE_ID ;;
  }

  dimension: vehicle_in_use_ind {
    type: string
    sql: ${TABLE}.VEHICLE_IN_USE_IND ;;
  }

  dimension: vehicle_in_use_indicator {
    type: string
    sql: ${TABLE}.Vehicle_In_Use_Indicator ;;
  }

  dimension: vehicle_snapshot_key {
    type: number
    sql: ${TABLE}.VEHICLE_SNAPSHOT_KEY ;;
  }

  dimension: vehicle_type_cd {
    type: string
    sql: ${TABLE}.VEHICLE_TYPE_CD ;;
  }

  dimension: vehicle_type_desc {
    type: string
    sql: ${TABLE}.VEHICLE_TYPE_DESC ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.VIN ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
