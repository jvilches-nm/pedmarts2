connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_bi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_bi_default_datagroup

explore: student_snapshot {
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.district_key} = ${districts.district_key}
            ${student_snapshot.period_key} = ${districts.period_key} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.location_key} = ${locations.location_key}
            ${student_snapshot.period_key} = ${locations.period_key} ;;
  }
}
