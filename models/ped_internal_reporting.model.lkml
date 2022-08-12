connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_bi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_bi_default_datagroup

#explore: attendance_summary {
#  join: student_snapshot {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${attendance_summary.student_key} = ${student_snapshot.student_key} and
#            ${attendance_summary.snapshot_period} = ${student_snapshot.snapshot_period};;
#  }
#  join: period {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
#            ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
#  }
#  join: districts {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${attendance_summary.district_key} = ${districts.district_key} and
#      ${attendance_summary.school_year_end_date} = ${districts.school_year_end_date} ;;
#  }
#  join: locations {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${attendance_summary.location_key} = ${locations.location_key} and
#      ${attendance_summary.school_year_end_date} = ${locations.school_year_end_date} ;;
#  }
#}

explore: programs_fact {
  label: "Programs"
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.student_key} = ${student_snapshot.student_key} and
      ${programs_fact.program_start_date} = ${student_snapshot.student_snapshot_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: districts {
    relationship: many_to_one
    view_label: "Program District"
    type: inner
    sql_on: ${programs_fact.district_key} = ${districts.district_key} and
      ${programs_fact.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    view_label: "Program Location"
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
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
            ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
}

explore: discipline {
  join: student_consolidated {
    relationship:many_to_one
    type:inner
    sql_on: ${discipline.student_key} = ${student_consolidated.student_key}
        and ${discipline.school_year_date} = ${student_consolidated.school_year_end_date} ;;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${discipline.district_key} = ${districts.district_key} and
      ${discipline.school_year_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${discipline.location_key} = ${locations.location_key} and
      ${discipline.school_year_date} = ${locations.school_year_end_date} ;;
  }
}

explore: student_consolidated {
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated.district_key} = ${districts.district_key} and
      ${student_consolidated.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated.location_key} = ${locations.location_key} and
      ${student_consolidated.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
}

explore: license_user_endorsements {
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${license_user_endorsements.staff_id} = ${staff_snapshot.staff_id}
            and ${staff_snapshot.snapshot_date} between ${license_user_endorsements.start_date} and ${license_user_endorsements.exp_date};;
  }
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
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${staff_snapshot.snapshot_date}=${period.period_start_date};;
  }
}

explore: license_user_info {
  view_label: "Staff License"
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${license_user_info.staff_id} = ${staff_snapshot.staff_id};;
  }
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
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${staff_snapshot.snapshot_date}=${period.period_start_date};;
  }
}


explore: course_instruct_staff_student_snapshot {
  label: "Course Snapshot"
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    view_label: "Primary Instructor"
    sql_on: ${course_instruct_staff_student_snapshot.staff_key_primary_instructor} = ${staff_snapshot.staff_key}
    and ${course_instruct_staff_student_snapshot.staff_snapshot_date} = ${staff_snapshot.snapshot_date};;
  }
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.student_key}=${student_snapshot.student_key}
    and ${course_instruct_staff_student_snapshot.student_snapshot_date} = ${student_snapshot.student_snapshot_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${course_instruct_staff_student_snapshot.location_key} = ${locations.location_key}
      and ${course_instruct_staff_student_snapshot.school_year_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${course_instruct_staff_student_snapshot.district_key} = ${districts.district_key}
      and ${course_instruct_staff_student_snapshot.school_year_date} = ${districts.school_year_end_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.school_year_date}=${period.school_year_end_date} and
      ${course_instruct_staff_student_snapshot.student_snapshot_date}=${period.period_start_date};;
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
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${period.school_year_end_date} and
            ${staff_snapshot.snapshot_date}=${period.period_start_date};;
  }
}

explore: staff_assignment_snapshot {
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.staff_key}=${staff_snapshot.staff_key} and
            ${staff_assignment_snapshot.staff_snapshot_date}=${staff_snapshot.snapshot_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${staff_snapshot.snapshot_date}=${period.period_start_date};;
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

explore: assessment {
  join: student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${assessment.student_key}=${student_consolidated.student_key}
      and ${assessment.school_year} = ${student_consolidated.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${assessment.location_key}.location_key} = ${locations.location_key}
      and ${assessment.school_year} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${assessment.district_key} = ${districts.district_key}
      and ${assessment.school_year} = ${districts.school_year_end_date};;
  }
}

explore: school_enroll {
  join: student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${school_enroll.student_id}= ${student_consolidated.student_id}
       and ${school_enroll.school_year_end_date} = ${student_consolidated.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${school_enroll.location_id} = ${locations.location_id}
      and ${school_enroll.district_code} = ${locations.district_code}
      and ${school_enroll.school_year_end_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${school_enroll.district_code} = ${districts.district_code}
      and ${school_enroll.school_year_end_date} = ${districts.school_year_end_date};;
  }
}

explore: student_attendance {
  join: student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${student_attendance.student_key}= ${student_consolidated.student_key}
       and $student_attendance.school_year_end_date}= ${student_consolidated.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_attendance.location_key} = ${locations.location_key}
      and ${student_attendance.school_year_end_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_attendance.district_key} = ${districts.district_key}
      and ${student_attendance.school_year_end_date} = ${districts.school_year_end_date};;
  }
}

map_layer: my_neighborhood_layer {
  file: "/Map_Shapefiles/dist_map.topojson"
  property_key: "name"
}
