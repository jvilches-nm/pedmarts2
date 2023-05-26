connection: "dm02"

# include all the views
include: "/views/**/*.view"

datagroup: ped_bi_default_datagroup {
  sql_trigger: SELECT max(modify_date) FROM sys.tables;;
  max_cache_age: "24 hours"
}

persist_with: ped_bi_default_datagroup

explore: assessment_rea {
  join: districts {
    relationship: many_to_one
    type: left_outer
    sql_on: format(${assessment_rea.dist_code}, '000') = ${districts.district_code}
      and ${assessment_rea.year} = year(${districts.school_year_end_date}) ;;
  }
  join: locations {
    relationship: many_to_one
    type: left_outer
    sql_on: format(${assessment_rea.dist_code},'000')=${locations.district_code}
          and format(${assessment_rea.schnumb}-(${assessment_rea.dist_code}*1000), '000')=${locations.location_id}
          and ${assessment_rea.year}=year(${locations.school_year_end_date});;
  }

  join: student_consolidated {
    relationship: many_to_one
    type: left_outer
    sql_on: ${assessment_rea.student_id} = ${student_consolidated.student_id}
      and ${assessment_rea.year} = year(${student_consolidated.school_year_end_date});;
  }

}

explore: vehicle_snapshot {
  label: "Transportation"

     join: districts {
     relationship: many_to_one
     type: inner
     sql_on: ${vehicle_snapshot.district_key} = ${districts.district_key} and
     ${vehicle_snapshot.school_year_date}=${districts.school_year_end_date};;

   }
join: vehicle_mileage {
  relationship: many_to_one
  type: left_outer
  sql_on: ${vehicle_snapshot.vehicle_snapshot_key} = ${vehicle_mileage.vehicle_snapshot_key}
  and ${vehicle_snapshot.school_year_date} = ${vehicle_mileage.school_year_date}
  and ${vehicle_snapshot.district_key} = ${vehicle_mileage.district_key};;
}
  join: period {
     relationship: many_to_one
     type: inner
     sql_on: ${vehicle_snapshot.school_year_date}=${period.school_year_end_date}
    and ${vehicle_snapshot.reporting_date} = ${period.period_start_date};;
   }

  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${vehicle_snapshot.school_year_date} = ${school_year.school_year_end_date} ;;
  }

}



explore: programs_fact {
  label: "Programs"
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.student_key} = ${student_snapshot.student_key}
       and  ${programs_fact.program_start_date} = ${student_snapshot.student_snapshot_date}
       and  ${programs_fact.school_year_end_date} = ${student_snapshot.school_year_end_date};;
  }

  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.school_year_end_date} = ${school_year.school_year_end_date} ;;
  }

  join: education_services {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.student_key} = ${education_services.student_key}
       and  ${programs_fact.programs_key} = ${education_services.programs_key};;
  }

  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_fact.school_year_end_date}=${period.school_year_end_date}
       and  ${programs_fact.program_start_date}=${period.period_start_date};;
  }

  join: districts {
    relationship: many_to_one
    view_label: "Program District"
    type: inner
    sql_on: ${programs_fact.district_key} = ${districts.district_key}
       and  ${programs_fact.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: locations {
    relationship: many_to_one
    view_label: "Program Location"
    type: inner
    sql_on: ${programs_fact.location_key} = ${locations.location_key}
       and  ${programs_fact.school_year_end_date} = ${locations.school_year_end_date} ;;
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${school_year.school_year_end_date} ;;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
            ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: prior_student_location {
    relationship: one_to_one
    type: left_outer
    sql_on: ${student_snapshot.student_id}=${prior_student_location.student_id} and
            ${student_snapshot.student_snapshot_date} = ${prior_student_location.student_snapshot_date};;
  }
}

explore: discipline {
  join: student_consolidated_with_eoy {
    relationship:many_to_one
    type:inner
    sql_on: ${discipline.student_key} = ${student_consolidated_with_eoy.student_key}
        and ${discipline.school_year_date} = ${student_consolidated_with_eoy.school_year_end_date} ;;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${discipline.school_year_date}=${school_year.school_year_end_date} ;;
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated.school_year_end_date}=${school_year.school_year_end_date} ;;
  }
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated_with_eoy.school_year_end_date}=${school_year.school_year_end_date} ;;
  }
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
       and  ${staff_snapshot.snapshot_date} between ${license_user_endorsements.start_date} and ${license_user_endorsements.exp_date};;
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${school_year.school_year_end_date} ;;
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${school_year.school_year_end_date} ;;
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
    type: left_outer
    view_label: "Primary Instructor"
    sql_on: ${course_instruct_staff_student_snapshot.staff_key_primary_instructor} = ${staff_snapshot.staff_key}
    and ${course_instruct_staff_student_snapshot.staff_snapshot_date} = ${staff_snapshot.snapshot_date};;
  }
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.student_key}=${student_snapshot.student_key}
    and ${course_instruct_staff_student_snapshot.school_year_date} = ${course_instruct_staff_student_snapshot.school_year_date}
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${course_instruct_staff_student_snapshot.school_year_date}=${school_year.school_year_end_date} ;;
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
     ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date}
      ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.location_key} = ${locations.location_key}
      and ${locations.district_key} = ${districts.district_key};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${school_year.school_year_end_date} ;;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.school_year_end_date}=${period.school_year_end_date} and
            ${staff_snapshot.snapshot_date}=${period.period_start_date};;
  }
}

explore: staff_development_activity {
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_development_activity.staff_key} = ${staff_snapshot.staff_key}
    and ${staff_development_activity.school_year_date} = ${staff_snapshot.school_year_end_date}
    and ${staff_development_activity.entry_date} = ${staff_snapshot.snapshot_date}

      ;;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on:
          ${staff_snapshot.district_key} = ${districts.district_key}
          and ${staff_snapshot.school_year_end_date} = ${districts.school_year_end_date}
            ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_snapshot.location_key} = ${locations.location_key}
      and ${locations.district_key} = ${districts.district_key};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_development_activity.school_year_date}=${period.school_year_end_date} and
      ${staff_development_activity.entry_date}=${period.period_start_date}
;;
  }
}

explore: staff_assignment_snapshot {
  join: staff_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.staff_key}=${staff_snapshot.staff_key} and
            ${staff_assignment_snapshot.staff_snapshot_date}=${staff_snapshot.snapshot_date};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${staff_assignment_snapshot.school_year_end_date}=${school_year.school_year_end_date} ;;
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
  join: license_user_endorsements {
    relationship: many_to_one
    type: left_outer
    sql_on: ${license_user_endorsements.staff_id} = ${staff_assignment_snapshot.staff_id} ;;
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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${assessment.school_year}=${school_year.school_year_end_date} ;;
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
      and ${special_ed_snapshot.student_snapshot_date} = ${student_snapshot.student_snapshot_date};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${special_ed_snapshot.school_year_date}=${school_year.school_year_end_date} ;;
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
    sql_on: ${education_services.student_key} = ${special_ed_snapshot.student_key}
    and ${education_services.school_year_date} = ${special_ed_snapshot.school_year_date}
    and ${education_services.svc_start_date} =${special_ed_snapshot.student_snapshot_date};;
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

# Place in `ped_internal_reporting` model

explore: +special_ed_snapshot {

    query: district_quick_explore {
      dimensions: [education_services.educ_svc_long_desc, locations.location_name_full]
      measures: [student_snapshot.count]
      filters: [
        districts.district_name: "ALAMOGORDO",
        education_services.educ_svc_code: "AU,SS,OT,PT,PS,SW,TRS,SECDEV,LIFT,NS,IHP",
        locations.charter_school: "No",
        period.school_year: "2021-2022",
        period.snapshot_period: "80D"
      ]
    }

}




explore: school_enroll {
  join: student_consolidated_with_eoy {
    relationship: many_to_one
    type: left_outer
    sql_on: ${school_enroll.student_id}= ${student_consolidated_with_eoy.student_id}
      and ${school_enroll.school_year_end_date} = ${student_consolidated_with_eoy.school_year_end_date};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${school_enroll.school_year_end_date}=${school_year.school_year_end_date} ;;
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
    sql_on: ${student_events.student_id = ${school_enroll.student_id}
         ;;
  }
}

explore: student_attendance {
  label: "Attendance Day"
  join: student_consolidated {
    relationship: many_to_one
    type: inner
    sql_on: ${student_attendance.student_key}= ${student_consolidated.student_key}
      and ${student_attendance.school_year_end_date}= ${student_consolidated.school_year_end_date};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${student_attendance.school_year_end_date}=${school_year.school_year_end_date} ;;
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
  label: "CTE Perkins Students"
  join: cte_students_clusters {
    relationship: many_to_one
    type: left_outer
    view_label: "CTE Student Clusters"
    sql_on: ${perkins_students.student_id} = ${cte_students_clusters.student_id}
      and ${perkins_students.school_year_date} = ${cte_students_clusters.school_year_date}
      and ${perkins_students.version_number} = ${cte_students_clusters.version_number};;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${perkins_students.school_year_date}=${school_year.school_year_end_date} ;;
  }
  join: student_snapshot {
    relationship: many_to_one
    type: left_outer
    sql_on: ${perkins_students.student_id}=${student_snapshot.student_id}
      and ${perkins_students.student_snapshot_date} = ${student_snapshot.student_snapshot_date}
      and ${perkins_students.school_year_date} = ${student_snapshot.school_year_end_date};;
  }
  join: programs_fact {
    relationship: many_to_one
    type: left_outer
    view_label: "Programs"
    sql_on:${student_snapshot.student_key} = ${programs_fact.student_key} and
      ${student_snapshot.student_snapshot_date} = ${programs_fact.program_start_date}
      and ${student_snapshot.school_year_end_date} = ${programs_fact.school_year_end_date};;
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
    type: inner
    sql_on: ${student_snapshot.location_key} = ${locations.location_key}
      and ${student_snapshot.school_year_end_date} = ${locations.school_year_end_date};;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${perkins_students.district_code} = ${districts.district_code}
      and ${perkins_students.school_year_date} = ${districts.school_year_end_date};;
  }
}

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
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${cte_students_clusters.school_year_date}=${school_year.school_year_end_date} ;;
  }

}

explore: cluster_courses {
  label: "CTE Course Clusters"
  join: course_instruct_staff_student_snapshot {
    relationship: many_to_one
    type: left_outer
    view_label: "Course Snapshot"
    sql_on: ${cluster_courses.course_id} = ${course_instruct_staff_student_snapshot.state_course_course_id}
    and ${cluster_courses.school_year_date} = ${course_instruct_staff_student_snapshot.school_year_date};;
  }
join: school_year {
  relationship: many_to_one
  type: inner
  sql_on: ${cluster_courses.school_year_date}=${school_year.school_year_end_date} ;;
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
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_consolidated.school_year_end_date}=${period.school_year_end_date} and
      ${student_consolidated.student_snapshot_date}=${period.period_start_date};;
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
join: school_year {
  relationship: many_to_one
  type: inner
  sql_on: ${attendance_summary.school_year_date}=${school_year.school_year_end_date} ;;
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
join: school_year {
  relationship: many_to_one
  type: inner
  sql_on: ${student_events.school_year_date}=${school_year.school_year_end_date} ;;
}
}

explore: homeschool_students {
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${homeschool_students.school_year}=${school_year.school_year} ;;
  }

}

explore: programs_services_fact {
  label: "Program Services"
  join: student_snapshot {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_services_fact.student_key} = ${student_snapshot.student_key}
          and ${programs_services_fact.school_year_date} = ${student_snapshot.school_year_end_date}
                and ${programs_services_fact.svc_start_date} = ${student_snapshot.student_snapshot_date}
                ;;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_services_fact.school_year_date}=${school_year.school_year_end_date} ;;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
  join: programs_code {
    relationship: many_to_one
    type: inner
    sql_on: ${programs_services_fact.programs_key} = ${programs_code.programs_key}
      and ${student_snapshot.school_year_end_date} = ${programs_code.school_year_date};;
  }
  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${districts.district_key} = ${programs_services_fact.district_key}
      and ${districts.school_year_end_date} = ${programs_services_fact.school_year_date} ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${locations.location_key} = ${programs_services_fact.svc_location_key}
      and ${locations.school_year_end_date} = ${programs_services_fact.school_year_date}
      and ${locations.district_key} = ${districts.district_key}
      ;;
  }
}

explore: locations {
  label: "Schools"

  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${locations.district_key} = ${districts.district_key} and
            ${locations.school_year_end_date} = ${districts.school_year_end_date} ;;
  }
  join: school_year {
    relationship: many_to_one
    type: inner
    sql_on: ${locations.school_year_end_date}=${school_year.school_year_end_date} ;;
  }
}

explore: +student_snapshot {

    query: 40D_Student_Count_for_2021-2022 {
      dimensions: [student_race_1]
      measures: [count]
      filters: [
        period.snapshot_period: "40D",
        school_year.school_year: "2021-2022"
      ]
      }
  }

explore: +student_snapshot {

    query: Student_Enrollments_by_Gender_by_School_Years{
      dimensions: [gender, school_year.school_year]
      measures: [count]
      filters: [period.snapshot_period: "80D"]
    }

  }

explore: +student_snapshot {

    query:Top_10_Districts_by_Student_Enrollment_2021-22 {

      dimensions: [districts.district_name_legal]
      measures: [count]
      filters: [
        period.snapshot_period: "80D",
        school_year.school_year: "2021-2022"
      ]
    }

}



# Place in `ped_internal_reporting` model

explore: +programs_services_fact {

    query: filters{
      measures: [student_snapshot.count]
      filters: [
        districts.district_name: "ALBUQUERQUE",
        period.school_year: "2021-2022",
        period.snapshot_period: "EOY"
      ]

    }

}

explore: grad_data {
  label: "Graduation"
}

map_layer: my_neighborhood_layer {
  file: "/Map_Shapefiles/dist_map_v2.topojson"
  property_key: "name"
}
