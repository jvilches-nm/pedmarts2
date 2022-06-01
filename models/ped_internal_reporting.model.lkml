connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_bi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_bi_default_datagroup

explore: attendance_summary {
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${attendance_summary.student_key} = ${student_snapshot.student_key} and
            ${attendance_summary.snapshot_period} = ${student_snapshot.snapshot_period};;
  }

  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${attendance_summary.district_key} = ${districts.district_key} and
      ${attendance_summary.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${attendance_summary.location_key} = ${locations.location_key} and
      ${attendance_summary.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}

explore: programs_fact {
  label: "Programs"
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.student_key} = ${student_snapshot.student_key} and
      ${programs_fact.program_start_date} = ${student_snapshot.student_snapshot_date};;
  }

  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.district_key} = ${districts.district_key} and
      ${programs_fact.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.location_key} = ${locations.location_key} and
      ${programs_fact.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}

explore: student_snapshot {
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.district_key} = ${districts.district_key} and
            ${student_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.location_key} = ${locations.location_key} and
            ${student_snapshot.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}

explore: staff_snapshot {
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.district_key} = ${districts.district_key} and
      ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.location_key} = ${locations.location_key} and
      ${staff_snapshot.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}

explore: staff_assignment_snapshot {
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.staff_key}=${staff_snapshot.staff_key} and
            ${staff_assignment_snapshot.staff_snapshot_date}=${staff_snapshot.snapshot_date};;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.district_key} = ${districts.district_key} and
      ${staff_assignment_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.location_key} = ${locations.location_key} and
      ${staff_assignment_snapshot.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}
