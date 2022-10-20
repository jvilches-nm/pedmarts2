connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_bi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ped_bi_default_datagroup

#explore: attendance_summary {
#  join: student_consolidated {
#    relationship: many_to_one
 #   type: inner
  #  sql_on: ${attendance_summary.student_key} = ${student_consolidated.student_key}
#   ;;
#  }
#  join: period {
#    relationship: many_to_one
#    type: inner
#   sql_on: ${student_consolidated.school_year_end_date}=${period.school_year_end_date} and
#           ${student_consolidated.student_snapshot_date}=${period.period_start_date};;
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
  join: student_consolidated_with_eoy {
    relationship:many_to_one
    type:inner
    sql_on: ${discipline.student_key} = ${student_consolidated_with_eoy.student_key}
        and ${discipline.school_year_date} = ${student_consolidated_with_eoy.school_year_end_date} ;;
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

explore: student_consolidated_with_eoy {
  label: "Student Consolidated - Includes EOY"
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated_with_eoy.district_key} = ${districts.district_key} and
      ${student_consolidated_with_eoy.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated_with_eoy.location_key} = ${locations.location_key} and
      ${student_consolidated_with_eoy.school_year_end_date} = ${locations.school_year_end_date} ;;
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
    type: left_outer
    sql_on: ${staff_snapshot.district_key} = ${districts.district_key} and
      ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
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
    type: left_outer
    sql_on: ${staff_snapshot.district_key} = ${districts.district_key} and
      ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
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
    type: left_outer
    sql_on: ${staff_snapshot.district_key} = ${districts.district_key} and
      ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
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
    type: left_outer
    sql_on: ${staff_assignment_snapshot.district_key} = ${districts.district_key} and
      ${staff_assignment_snapshot.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${staff_assignment_snapshot.location_key} = ${locations.location_key} and
      ${staff_assignment_snapshot.school_year_end_date} = ${locations.school_year_end_date} ;;
  }
  join: license_user_info {
    relationship: many_to_one
    type: left_outer
    sql_on: ${license_user_info.staff_id}=${staff_snapshot.staff_id} ;;
  }
}

explore: assessment {
  join: student_snapshot{
  #student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${assessment.student_key}=${student_snapshot.student_key}
      and ${assessment.school_year} = ${student_snapshot.school_year_end_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${assessment.location_key} = ${locations.location_key}
      and ${assessment.school_year} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${assessment.district_key} = ${districts.district_key}
      and ${assessment.school_year} = ${districts.school_year_end_date};;
  }
}

explore: special_ed_snapshot {
  join: student_snapshot{
    #student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${special_ed_snapshot.student_key}=${student_snapshot.student_key}
      and ${special_ed_snapshot.school_year_date} = ${student_snapshot.school_year_end_date}
      and ${special_ed_snapshot.student_snapshot_date} = ${student_snapshot.student_snapshot_date}
      and ${special_ed_snapshot.district_key} = ${student_snapshot.district_key}
      and ${special_ed_snapshot.location_key} = ${student_snapshot.location_key};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: education_services {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snapshot.student_key} = ${education_services.student_key}
    and ${education_services.school_year_date} = ${special_ed_snapshot.school_year_date}
    and ${education_services.district_key} = ${special_ed_snapshot.district_key}
    and ${education_services.location_key} = ${special_ed_snapshot.location_key}
    and ${education_services.svc_start_date} ${special_ed_snapshot.student_snapshot_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snapshot.location_key} = ${locations.location_key}
      and ${special_ed_snapshot.school_year_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${special_ed_snapshot.district_key} = ${districts.district_key}
      and ${special_ed_snapshot.school_year_date} = ${districts.school_year_end_date};;
  }
}


explore: school_enroll {
  join: student_consolidated_with_eoy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${school_enroll.student_id}= ${student_consolidated_with_eoy.student_id}
      and ${school_enroll.school_year_end_date} = ${student_consolidated_with_eoy.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${school_enroll.location_id} = ${locations.location_id}
      and ${locations.district_code} = ${districts.district_code}
      and ${school_enroll.school_year_end_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${school_enroll.district_code} = ${districts.district_code}
      and ${school_enroll.school_year_end_date} = ${districts.school_year_end_date};;
  }
  join: student_events {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_events.student_id = ${school_enroll.student_id} and
            ${student_events.district_key} = ${student_consolidated_with_eoy.district_key} and
            ${student_events.location_key} = ${student_consolidated_with_eoy.location_key}
         ;;
  }
}

explore: student_attendance {
  join: student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${student_attendance.student_key}= ${student_consolidated.student_key}
       and ${student_attendance.school_year_end_date}= ${student_consolidated.school_year_end_date};;
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

explore: perkins_students {
  join: cte_students_clusters {
    relationship: many_to_one
    type: inner
    view_label: "CTE Student Clusters"
    sql_on: ${perkins_students.student_id} = ${cte_students_clusters.student_id}
      and ${perkins_students.school_year_date} = ${cte_students_clusters.school_year_date}
      and ${perkins_students.version_number} = ${cte_students_clusters.version_number};;
  }
    join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${perkins_students.student_id}=${student_snapshot.student_id}
      and ${perkins_students.student_snapshot_date} = ${student_snapshot.student_snapshot_date};;
  }
  join: programs_fact {
    relationship: many_to_one
    type: left_outer
    view_label: "Programs"
    sql_on:${student_snapshot.student_key} = ${programs_fact.student_key} and
      ${student_snapshot.student_snapshot_date} = ${programs_fact.program_start_date}  ;;
  }
  join: student_credentials_cte {
    relationship: many_to_one
    view_label: "CTE Student Credentials"
    type: left_outer
    sql_on: ${programs_fact.student_key} = ${student_credentials_cte.student_key} ;;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${perkins_students.location_id} = ${locations.location_id}
      and ${perkins_students.school_year_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${perkins_students.district_code} = ${districts.district_code}
      and ${perkins_students.school_year_date} = ${districts.school_year_end_date};;
  }
}

#explore: student_credentials_cte {
#  join: programs_fact {
    #}
  #join: student_snapshot {
  #  relationship: many_to_one
  #  type: left_outer
  #  sql_on: ${student_credentials_cte.student_key}=${student_snapshot.student_key}
  #    and ${student_credentials_cte.school_year_date} = ${student_snapshot.school_year_end_date};;
  #}
  #join: locations {
  #  relationship: many_to_one
  #  type: left_outer
  #  sql_on: ${student_credentials_cte.location_key} = ${locations.location_key}
  #    and ${student_credentials_cte.school_year_date} = ${locations.school_year_end_date};;
  #}
  #join: districts {
  #  relationship: many_to_one
  #  type: left_outer
  #  sql_on: ${student_credentials_cte.district_key} = ${districts.district_key}
  #    and ${student_credentials_cte.school_year_date} = ${districts.school_year_end_date};;
  #}
#}

explore: cte_students_clusters {
  join: perkins_students {
    relationship: many_to_one
    type: left_outer
    sql_on: ${cte_students_clusters.student_id}=${perkins_students.student_id}
      and ${cte_students_clusters.school_year_date} = ${perkins_students.school_year_date};;
  }
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${cte_students_clusters.student_id}=${student_snapshot.student_id}
      and ${cte_students_clusters.school_year_date} = ${student_snapshot.school_year_end_date};;
  }

}

explore: cluster_courses {
  join: course_instruct_staff_student_snapshot {
    relationship: many_to_one
    type: left_outer
    view_label: "Course Snapshot"
    sql_on: ${cluster_courses.course_id} = ${course_instruct_staff_student_snapshot.state_course_course_id}
    and ${cluster_courses.school_year_date} = ${course_instruct_staff_student_snapshot.school_year_date};;
  }
}



explore: attendance_summary {
  join: student_consolidated {
    relationship: many_to_one
    type: left_outer
    #view_label: "Attendance"
    sql_on: ${attendance_summary.student_id} = ${student_consolidated.student_id} and
      ${attendance_summary.school_year_date} = ${student_consolidated.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_consolidated.location_key} = ${locations.location_key}
      and ${student_consolidated.school_year_end_date} = ${locations.school_year_end_date}
      and ${student_consolidated.district_key} = ${locations.district_key};;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_consolidated.district_key} = ${districts.district_key}
      and ${student_consolidated.school_year_end_date} = ${districts.school_year_end_date};;
  }
}

explore: student_events {
  join: student_consolidated_with_eoy {
    relationship: many_to_one
    type: inner
    sql_on: ${student_events.student_key}= ${student_consolidated_with_eoy.student_key}
      and ${student_events.school_year_date}= ${student_consolidated_with_eoy.school_year_end_date};;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_events.location_key} = ${locations.location_key}
      and ${student_events.school_year_date} = ${locations.school_year_end_date}
      ;;
  }
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: ${student_events.district_key} = ${districts.district_key}
      and ${student_events.school_year_date} = ${districts.school_year_end_date};;
  }
}

explore: homeschool_students {}

map_layer: my_neighborhood_layer {
  file: "/Map_Shapefiles/dist_map_v2.topojson"
  property_key: "name"
}
