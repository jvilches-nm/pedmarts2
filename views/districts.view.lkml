view: districts {
  sql_table_name: stars.districts ;;
  drill_fields: [nces_district_id, district_name]

  dimension: nces_district_id {
    type: string
    description: "NCES District ID"
    sql: ${TABLE}.NCES_District_ID ;;
  }

  dimension: charter_status {
    type: string
    sql: ${TABLE}.Charter_Status ;;
  }

  dimension: charter_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.Charter_Status_Code ;;
  }

  dimension: district_agency_type {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Agency_Type ;;
  }

  dimension: district_code {
    type: string
    sql: cast(${TABLE}.District_Code as varchar);;
  }

  dimension: district_county_name {
    type: string
    sql: ${TABLE}.District_County_Name ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}.DISTRICT_KEY ;;
  }

  dimension: district_unique_key {
    type: string
    primary_key: yes
    hidden: yes
    sql: cast(${TABLE}.DISTRICT_KEY as varchar) + "-" + cast(${TABLE}.PERIOD_KEY as varchar) ;;
  }

  dimension: district_name_legal {
    type: string
    sql: ${TABLE}.District_Legal_Name ;;
  }

  dimension: district_locale {
    type: string
    sql: ${TABLE}.District_Locale ;;
  }

  dimension: district_locale_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Locale_Code ;;
  }

  dimension: district_location_address_1 {
    type: string
    sql: ${TABLE}.District_Location_Address_1 ;;
  }

  dimension: district_location_city {
    type: string
    sql: ${TABLE}.District_Location_City ;;
  }

  dimension: district_location_state_code {
    type: string
    sql: ${TABLE}.District_Location_State_Code ;;
  }

  dimension: district_location_state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Location_State_Name ;;
  }

  dimension: district_location_zip_code {
    type: string
    sql: ${TABLE}.District_Location_Zip_Code ;;
  }

  dimension: district_location_address_full {
    type: string
    sql: ${TABLE}.District_Location_Address_1+", "+ ${TABLE}.District_Location_City+", "+ ${TABLE}.District_Location_State_Code+" "+${TABLE}.District_Location_Zip_Code;;
  }

  dimension: district_mailing_address_full {
    type: string
    sql: ${TABLE}.District_Mailing_Address_1+", "+ ${TABLE}.District_Mailing_City+", "+ ${TABLE}.District_Mailing_State_Code+" "+${TABLE}.District_Mailing_Zip_Code;;
  }

  dimension: district_mailing_address_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Mailing_Address_1 ;;
  }

  dimension: district_mailing_city {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Mailing_City ;;
  }

  dimension: district_mailing_state_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Mailing_State_Code ;;
  }

  dimension: district_mailing_state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Mailing_State_Name ;;
  }

  dimension: district_mailing_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Mailing_Zip_Code ;;
  }

  dimension: district_main_phone_number {
    type: string
    sql: ${TABLE}.District_Main_Phone_Number ;;
  }

  dimension: district_name {
    type: string
    map_layer_name: my_neighborhood_layer
    sql: ${TABLE}.District_Name ;;
  }

  dimension: district_name_filter{
    label: "District Name - Filter"
    description: "Use this if you want a value of All Districts when not choosing a district in a filter"
    type: string
    sql: ${TABLE}.District_Name ;;
    html: {% if districts.district_name._is_filtered %}
          <a>{{rendered_value}} </a>
          {% else %}
          <a> All Districts </a>
          {% endif %};;
  }

  dimension: district_operational_status {
    type: string
    sql: ${TABLE}.District_Operational_Status ;;
  }

  dimension: district_operational_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Operational_Status_Code ;;
  }

  dimension: district_organization_type {
    type: string
    sql: ${TABLE}.District_Organization_Type ;;
  }

  dimension: district_street_address {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Street_Address ;;
  }

  dimension: district_name_full {
    type: string
    sql: ${TABLE}.Full_District_Name ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}.LOCATION_KEY ;;
  }

  dimension_group: modified_date_district_year {
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
    sql: ${TABLE}.modified_date_DISTRICT_YEAR ;;
  }

  dimension: modified_indicator_district_year {
    type: string
    hidden: yes
    sql: ${TABLE}.modified_indicator_DISTRICT_YEAR ;;
  }

  dimension: period_key {
    type: number
    hidden: yes
    sql: ${TABLE}.PERIOD_KEY ;;
  }

  dimension: school_year_end_date {
    hidden: yes
    type: date
    sql: ${TABLE}.School_Year ;;
  }

  dimension: school_year {
    type: string
    label: "School Year"
    description: "The two years that the school year spans"
    sql: cast(YEAR(${TABLE}.School_Year)-1 as varchar) +'-'+ cast(YEAR(${TABLE}.School_year) as varchar) ;;
  }

  dimension: state_district_code {
    type: string
    hidden: yes
    sql: ${TABLE}.State_District_Code ;;
  }

  dimension: indian_education_focus_district {
    type: string
    label: "IED Focus District"
    description: "District is a focus district for the Indian Education Department"
    sql: case when ${TABLE}.District_Code in ('001', '064', '061', '066', '067', '062', '054', '055',
                                              '065', '043', '088', '056', '063', '017', '086', '075',
                                              '077', '072', '083', '036', '071', '076', '047', '089') then 'Yes'
              else 'No' end;;
  }

  dimension: martinez_yazzie_focus_district {
    type: string
    sql: case when ${TABLE}.District_Code = '046' then 'Yes'
              when ${TABLE}.District_Code = '001' then 'Yes'
              when ${TABLE}.District_Code = '061' then 'Yes'
              when ${TABLE}.District_Code = '062' then 'Yes'
              when ${TABLE}.District_Code = '055' then 'Yes'
              when ${TABLE}.District_Code = '019' then 'Yes'
              when ${TABLE}.District_Code = '043' then 'Yes'
              when ${TABLE}.District_Code = '088' then 'Yes'
              when ${TABLE}.District_Code = '018' then 'Yes'
              when ${TABLE}.District_Code = '063' then 'Yes'
              when ${TABLE}.District_Code = '007' then 'Yes'
              when ${TABLE}.District_Code = '017' then 'Yes'
              when ${TABLE}.District_Code = '086' then 'Yes'
              when ${TABLE}.District_Code = '075' then 'Yes'
              when ${TABLE}.District_Code = '081' then 'Yes'
              when ${TABLE}.District_Code = '077' then 'Yes'
              when ${TABLE}.District_Code = '072' then 'Yes'
              when ${TABLE}.District_Code = '083' then 'Yes'
              when ${TABLE}.District_Code = '071' then 'Yes'
              when ${TABLE}.District_Code = '023' then 'Yes'
              when ${TABLE}.District_Code = '076' then 'Yes'
              when ${TABLE}.District_Code = '049' then 'Yes'
              when ${TABLE}.District_Code = '089' then 'Yes'
         else 'No' end ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      nces_district_id,
      district_name
    ]
  }
}
