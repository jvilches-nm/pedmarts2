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
    sql_on: ${student_snapshot.district_key} = ${districts.district_key} and
            ${student_snapshot.school_year_end_date} = ${districts.school_year_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.location_key} = ${locations.location_key} and
            ${student_snapshot.school_year_end_date} = ${locations.school_year_date} ;;
  }
}
