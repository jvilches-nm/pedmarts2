connection: "dm02"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project


explore: student_digital_resources {
   join: student_snapshot {
     relationship: one_to_one
     type: inner
     sql_on: ${student_digital_resources.student_key}=${student_snapshot.student_key} and
             ${student_digital_resources.reporting_date_period_key}=${student_snapshot.period_key} ;;
   }

   join: locations {
     relationship: many_to_one
     type: inner
     sql_on: ${student_digital_resources.location_key} = ${districts.location_key} and
            ${student_digital_resources.school_year_date} = ${districts.school_year_date} ;;
   }

   join: districts {
     relationship: many_to_one
     type: inner
     sql_on: ${student_digital_resources.district_key} = ${districts.district_key} and
            ${student_digital_resources.school_year_date} = ${districts.school_year_date};;
   }
 }

explore: ecf_ben {
  join: districts {
    relationship: one_to_one
    type: left_outer
    sql_on: ${districts.district_code}=${ecf_ben.ecf_district_code} ;;
  }
  join: ecf_application_data {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_application_data.ben}=${ecf_ben.ben} ;;
  }
  join: ecf_unmet_needs {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_unmet_needs.application_number} = ${ecf_application_data.application_number} ;;
  }
  join: ecf_frn {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_frn.application_number}=${ecf_application_data.application_number} ;;
  }
  join: ecf_frn_narrative {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_frn_narrative.application_number}=${ecf_frn.application_number} and
            ${ecf_frn_narrative.frn}=${ecf_frn.frn};;
  }
}
