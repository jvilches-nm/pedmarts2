view: prior_student_location {
   derived_table: {
     sql: select x.* from
          (
          select student_id, dateadd(year, 1, ss.school_year) school_year,
                 dateadd(year, 1, student_snapshot_date) student_snapshot_date,
                 d.district_code prior_district_code, d.district_name prior_district_name,
                 l.full_location_name prior_location_name, l.location_id prior_location_id,
                 RANK() OVER(PARTITION BY ss.student_id, ss.student_snapshot_date ORDER BY l.location_id, modified_date_stud_snapshot) rank
            from stars.student_snapshot ss,
                 stars.districts d, stars.locations l
           where student_snapshot_date<dateadd(year, -1, getdate())
             and month(student_snapshot_date) in (3,6,10,12)
             and d.school_year=ss.school_year and d.district_key=ss.district_key
             and l.school_year=ss.school_year and l.location_key=ss.location_key
          ) x
          where rank=1
       ;;
     datagroup_trigger: ped_bi_default_datagroup
     indexes: ["student_id", "school_year", "student_snapshot_date"]
    }

dimension: student_id {
  type: string
  hidden: yes
  sql: ${TABLE}.student_id;;
}

dimension: school_year_date {
  type: date
  hidden: yes
  sql: ${TABLE}.school_year;;
}

dimension: student_snapshot_date {
  type: date
  hidden: yes
  sql: ${TABLE}.student_snapshot_date;;
}

dimension: prior_district_code {
  type: string
  description: "Prior District Code - One Year Prior - Same Snapshot Period"
  sql: ${TABLE}.prior_district_code;;
}

  dimension: prior_district_name {
    type: string
    description: "Prior District Name - One Year Prior - Same Snapshot Period"
    sql: ${TABLE}.prior_district_name;;
  }

  dimension: prior_location_name {
    type: string
    description: "Prior Location Name - One Year Prior - Same Snapshot Period"
    sql: ${TABLE}.prior_location_name;;
  }

  dimension: prior_student_location_unique_key {
  type: string
  primary_key: yes
  hidden: yes
  sql: cast(${TABLE}.student_id as varchar) +'-'+ cast(${TABLE}.student_snapshot_date as varchar) ;;
}

dimension: prior_district_location_code {
  type: string
  label: "Prior District and School Code"
  description: "Prior District-Location Code - One Year Prior - Same Snapshot Period"
  sql: ${TABLE}.prior_district_code +'-'+${TABLE}.prior_location_id;;
}
dimension: prior_district_school_name {
  type: string
  label: "Prior District and School Name"
  description: "Prior District and Schoo Name - One Year Prior - Same Snapshot Period"
  sql: case when ${prior_district_code}>='500' then ${prior_location_name} else ${prior_district_name} + ' - ' + ${prior_location_name} end;;
}

}
