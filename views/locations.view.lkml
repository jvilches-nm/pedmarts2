view: locations {
  sql_table_name: stars.locations ;;
  drill_fields: [nces_school_id,
      district_school_code,
      location_name_full,
      school_type,
      school_level,
      grade_level_range,
      school_year,
      location_status]

  dimension: alternative_school {
    type: string
    description: "Location is an alternative shcool - Yes/No"
    sql: case when ${TABLE}.Alternative_School_Indicator='Y' then 'Yes' else 'No' end ;;
  }

  dimension: ayp_additional_indicator_type {
    type: string
    hidden: yes
    sql: ${TABLE}.AYP_Additional_Indicator_Type ;;
  }

  dimension: ayp_grade_level_range {
    type: string
    hidden: yes
    sql: ${TABLE}.AYP_Grade_Level_Range ;;
  }

  dimension: boarding_school {
    type: string
    description: "Location is a boarding school - yes/no"
    sql: ${TABLE}.Boarding_School_Indicator ;;
  }

  dimension: charter_school {
    type: string
    description: "School is a charter school - yes/no"
    sql: case when ${TABLE}.Charter_School='Y' then 'Yes' else 'No' end ;;
  }

  dimension: school_type {
    type: string
    description: "School type - District School, State Charter, District Charter, Off-Site Location, BIA School, etc."
    sql: case when ${TABLE}.Charter_School='Y' then
                   case when ${district_code}>='500' then 'State Charter' else 'District Charter' end
              else
                   case when ${location_organization_type}='Public' then 'District School'
                        when ${location_organization_type}='Off-site' then 'Off-Site Location'
                        else ${location_organization_type}+' School' end
          end;;

  }

  dimension: charter_school_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Charter_School_Code ;;
  }

  dimension: location_name_common {
    type: string
    sql: ${TABLE}.Common_Location_Name ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Code ;;
  }

  dimension: district_school_code {
    type: string
    sql: ${TABLE}.District_Code + '-' + ${TABLE}.location_id ;;
  }

  dimension: prior_district_school_code {
    type: string
    sql: case when ${TABLE}.Prior_State_District_ID is not null then ${TABLE}.Prior_State_District_ID +'-'+${TABLE}.Prior_State_Location_ID
         else ${TABLE}.Prior_State_District_ID end;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: location_name_full {
    type: string
    sql: ${TABLE}.Full_Location_Name ;;
  }

  dimension: grade_level_range {
    type: string
    sql: ${TABLE}.Grade_Level_Range ;;
  }

  dimension: location_county_name {
    type: string
    sql: ${TABLE}.Loc_County_Name ;;
  }

  dimension: location_address_full {
    type: string
    description: "Full street address, city, state, zip"
    sql: ${TABLE}.location_street_address +", "+ ${TABLE}.Location_Address_City +', '+ ${TABLE}.Location_Address_State_Code +' '+${TABLE}.Location_Address_Zip_Code;;
  }

  dimension: location_address_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Address_1 ;;
  }

  dimension: location_address_2 {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Address_2 ;;
  }

  dimension: location_address_city {
    type: string
    sql: ${TABLE}.Location_Address_City ;;
  }

  dimension: location_address_state_code {
    type: string
    sql: ${TABLE}.Location_Address_State_Code ;;
  }

  dimension: location_address_zip_code {
    type: string
    sql: ${TABLE}.Location_Address_Zip_Code ;;
  }

  dimension: location_administrator_email_address {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Administrator_Email_Address ;;
  }

  dimension: location_administrator_first_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Administrator_First_Name ;;
  }

  dimension: location_administrator_last_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Administrator_Last_Name ;;
  }

  dimension: location_administrator_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Administrator_Name ;;
  }

  dimension: location_administrator_position_title {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Administrator_Position_Title ;;
  }

  dimension: location_close {
    type: date
    description: "Date location closed"
    sql: ${TABLE}.Location_Close_Date ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_ID ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension: location_unique_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: cast(${TABLE}.LOCATION_KEY as varchar) + "-" + cast(${TABLE}.PERIOD_KEY as varchar) ;;
  }

  dimension: location_latitude {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Latitude ;;
  }

  dimension: location_name_legal {
    type: string
    sql: ${TABLE}.Location_Legal_Name ;;
  }

  dimension: location_locale {
    type: string
    description: "Locale description such as Rural, City, Suburb, Town, etc."
    sql: ${TABLE}.Location_Locale ;;
  }

  dimension: location_locale_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Locale_Code ;;
  }

  dimension: location_longitude {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Longitude ;;
  }

  dimension: map_location {
    type: location
    sql_latitude:${location_latitude} ;;
    sql_longitude:${location_longitude} ;;
  }

  dimension: location_mailing_address_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Mailing_Address_1 ;;
  }

  dimension: location_mailing_city {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Mailing_City ;;
  }

  dimension: location_mailing_state_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Mailing_State_Code ;;
  }

  dimension: location_mailing_state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Mailing_State_Name ;;
  }

  dimension: location_mailing_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_Mailing_Zip_Code ;;
  }

  dimension: location_mailing_address_full {
    type: string
    sql: ${TABLE}.Location_Mailing_Address_1 +", "+ ${TABLE}.Location_Mailing_City +", "+ ${TABLE}.Location_Mailing_State_Code + " "+${TABLE}.Location_Mailing_Zip_Code;;
  }

  dimension: location_main_phone_number {
    type: string
    sql: ${TABLE}.Location_Main_Phone_Number ;;
  }

  dimension: location_name_long {
    type: string
    sql: ${TABLE}.Location_Name_Long ;;
  }

  dimension: location_open {
    type: date
    description: "Date the location opened"
    sql: ${TABLE}.Location_Open_Date ;;
  }

  dimension: location_organization_subtype {
    type: string
    sql: ${TABLE}.Location_Organization_Subtype ;;
  }

  dimension: location_organization_type {
    type: string
    sql: ${TABLE}.Location_Organization_Type_Code ;;
  }

  dimension: location_state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.Location_State_Name ;;
  }

  dimension: location_status {
    type: string
    description: "Status of the location during the selected school year."
    sql: ${TABLE}.Location_Status ;;
  }

  dimension_group: location_status {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Location_Status_Date ;;
  }

  dimension: location_address_street {
    type: string
    sql: ${TABLE}.Location_Street_Address ;;
  }

  dimension: location_web_site {
    type: string
    sql: ${TABLE}.Location_Web_Site ;;
  }

  dimension: lunch_program {
    type: string
    sql: ${TABLE}.Lunch_Program ;;
  }

  dimension: lunch_program_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Lunch_Program_Code ;;
  }

  dimension: magnet_school {
    type: string
    sql: ${TABLE}.Magnet_School ;;
  }

  dimension: magnet_school_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Magnet_School_Code ;;
  }

  dimension: math_proficiency_target_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Math_Proficiency_Target_Code ;;
  }

  dimension_group: modified_date_location_year {
    type: time
    hidden: yes
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.modified_date_LOCATION_YEAR ;;
  }

  dimension: nces_school_id {
    type: string
    sql: ${TABLE}.NCES_School_ID ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: persistently_dangerous_status {
    type: string
    sql: ${TABLE}.Persistently_Dangerous_Status ;;
  }

  dimension: persistently_dangerous_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Persistently_Dangerous_Status_Code ;;
  }

  dimension: poverty_level {
    type: number
    description: "Poverty level factor - up to 2018 only"
    sql: ${TABLE}.Poverty_Level ;;
  }

  dimension: prior_state_district_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Prior_State_District_ID ;;
  }

  dimension: school_category {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Category ;;
  }

  dimension: school_category_code {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Category_Code ;;
  }

  dimension: school_level {
    type: string
    sql: ${TABLE}.School_Level ;;
  }

  dimension: school_level_code {
    type: string
    hidden: yes
    sql: ${TABLE}.School_Level_Code ;;
  }

  dimension: school_year_end_date {
    type: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_Year) as varchar) ;;
  }

  dimension: state_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}.State_Location_ID ;;
  }

  dimension: title_i_location_category {
    type: string
    hidden: yes
    sql: ${TABLE}.Title_I_Location_Category ;;
  }

  dimension: title_i_location_status {
    type: string
    sql: ${TABLE}.Title_I_Location_Status ;;
  }

  dimension: title_i_location_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Title_I_Location_Status_Code ;;
  }

  dimension: virtual_location {
    type: string
    sql: ${TABLE}.Virtual_Location ;;
  }

  dimension: virtual_location_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Virtual_Location_Code ;;
  }

  dimension: indian_education_focus_charter {
    type: string
    sql: case when ${TABLE}.District_Code in ('573', '578', '568', '552') then 'Yes'
              when ${TABLE}.location_name_long='DREAM DINE' then 'Yes'
              when ${TABLE}.location_name_long='GORDON BERNELL CHARTER' then 'Yes'
              when ${TABLE}.location_name_long='SAN DIEGO RIVERSIDE' then 'Yes'
              when ${TABLE}.location_name_long='VISTA GRANDE HIGH SCHOOL' then 'Yes'
              else 'No' end;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      nces_school_id,
      district_school_code,
      location_name_full,
      school_type,
      school_level,
      grade_level_range,
      school_year,
      location_status
    ]
  }
}
