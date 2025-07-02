 view: special_ed_exit_date {
   # Or, you could make this view a derived table, like this:
   derived_table: {
     sql: SELECT ss.student_ID, ss.student_snapshot_date, max(se.event_effective_date) special_ed_exit_date
            from stars.student_snapshot ss
          left join stars.student_events se on se.event_type_code=1 and se.student_id=ss.student_id and ss.student_snapshot_date>se.event_effective_date
          group by ss.student_id, ss.student_snapshot_date
       ;;
    interval_trigger: "24 hours"
    #datagroup_trigger: ped_bi_default_datagroup
    indexes: ["student_id", "student_snapshot_date"]
    }

   # Define your dimensions and measures here, like this:
   dimension: student_id {
     type: string
     hidden: yes
     sql: ${TABLE}.student_id ;;
   }

   dimension: student_snapshot_date {
     type: date
     hidden: yes
     sql: ${TABLE}.student_snapshot_date ;;
   }

   dimension: special_ed_exit_event_date {
     description: "The most recent special ed exit event for the student."
     type: date
     sql: ${TABLE}.special_ed_exit_date ;;
   }

 }
