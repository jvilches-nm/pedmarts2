connection: "dm02"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: student_snapshot {
  join: student_digital_resources  {
    relationship: one_to_one
    type: left_outer
    sql_on:${student_snapshot.student_key}=${student_digital_resources.student_key} and
             ${student_snapshot.period_key}=${student_digital_resources.reporting_date_period_key} and
           ${student_snapshot.location_key}=${student_digital_resources.location_key}  ;;
  }
  join: locations {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.location_key} = ${locations.location_key} and
      ${student_snapshot.school_year_end_date} = ${locations.school_year_end_date} ;;
  }

  join: districts {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.district_key} = ${districts.district_key} and
      ${student_snapshot.school_year_end_date} = ${districts.school_year_end_date};;
  }
  join: period {
    relationship: many_to_one
    type: inner
    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
  }
}

#explore: student_digital_resources {
#   join: student_snapshot {
#     relationship: one_to_one
#     type: inner
#     sql_on: ${student_digital_resources.student_key}=${student_snapshot.student_key} and
#             ${student_digital_resources.reporting_date_period_key}=${student_snapshot.period_key} ;;
#   }
#  join: period {
#    relationship: many_to_one
#    type: inner
#    sql_on: ${student_snapshot.school_year_end_date}=${period.school_year_end_date} and
#      ${student_snapshot.student_snapshot_date}=${period.period_start_date};;
#  }
#   join: locations {
#     relationship: many_to_one
#     type: inner
#     sql_on: ${student_digital_resources.location_key} = ${locations.location_key} and
#            ${student_digital_resources.school_year_end_date} = ${locations.school_year_end_date} ;;
#   }
#   join: districts {
#     relationship: many_to_one
#     type: inner
#     sql_on: ${student_digital_resources.district_key} = ${districts.district_key} and
#            ${student_digital_resources.school_year_end_date} = ${districts.school_year_end_date};;
#   }
# }

explore: ecf_billed_entity {
  label: "Emergency Connectivity Funding"
  join: locations {
    relationship: one_to_one
    type: left_outer
    sql_on: ${locations.district_code}=${ecf_billed_entity.district_id} and
            ${locations.location_id} = ${ecf_billed_entity.location_id} and
            ${locations.school_year}='2021-2022';;
  }

  join: districts {
    relationship: one_to_one
    type: left_outer
    sql_on: ${districts.district_code}=${ecf_billed_entity.district_id} and ${districts.school_year}='2021-2022';;
  }

  join: ecf_application {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_application.billed_entity_number}=${ecf_billed_entity.billed_entity_number} ;;
  }

  join: ecf_funding_request {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_funding_request.application_number}=${ecf_application.application_number} ;;
  }
  join: ecf_funding_line_item {
    relationship: many_to_one
    type: inner
    sql_on: ${ecf_funding_request.funding_request_number}=${ecf_funding_line_item.funding_request_number};;
  }
}

map_layer: my_neighborhood_layer {
  file: "/Map_Shapefiles/dist_map_v2.topojson"
  property_key: "name"

}
