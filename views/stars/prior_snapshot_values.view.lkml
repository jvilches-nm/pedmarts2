view: prior_snapshot_values {
   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql: select student_id, student_snapshot_date, prior_snapshot_date, prior_special_ed_status from
           (select ss.student_id, ss.student_snapshot_date, sp.student_snapshot_date prior_snapshot_date, sp.special_ed_status prior_special_ed_status,
                   RANK() OVER(PARTITION BY ss.student_id, ss.student_snapshot_date ORDER BY sp.student_snapshot_date desc) rank
                   from stars.student_snapshot ss
              join (select student_id, student_snapshot_date, special_ed_status from stars.student_snapshot) sp on sp.student_id=ss.student_id and ss.student_snapshot_date>sp.student_snapshot_date
           )  x
           where rank=1
       ;;
    interval_trigger: "24 hours"
    #datagroup_trigger: ped_bi_default_datagroup

    indexes: ["student_id", "student_snapshot_date"]
    }

   # Define your dimensions and measures here, like this:
   dimension: student_id {
     hidden: yes
     type: string
     sql: ${TABLE}.student_id ;;
   }

   dimension: student_snapshot_date {
     hidden: yes
     type: date
     sql: ${TABLE}.student_snapshot_date ;;
   }

  dimension: prior_snapshot_date {
    hidden: no
    type: date
    sql: ${TABLE}.prior_snapshot_date ;;
  }

  dimension: prior_special_ed_status {
     description: "The special ed status in the snapshot prior to the current one."
     type: string
     sql: ${TABLE}.prior_special_ed_status ;;
   }

 }
