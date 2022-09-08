view: districts {
  derived_table: {
    sql: select d.*, de.rea_district_code, my_focus, ied_focus, cte_region, cte_priorities
          from stars.districts d
          left outer join dbo.districts_extension de on de.district_code=d.district_code
          where d.district_organization_type in ('State Charter', 'State District', 'State Supported') ;;
  }
  drill_fields: [nces_district_id, district_name]

  dimension: nces_district_id {
    type: string
    description: "NCES District ID"
    sql: ${TABLE}.NCES_District_ID ;;
  }

  dimension: charter_status {
    type: string
    description: "Charter status - Y/N"
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
    description: "Three digit district code"
    sql: cast(${TABLE}.District_Code as int);;
  }

  dimension: district_county_name {
    type: string
    hidden: yes
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
    sql: cast(${TABLE}.DISTRICT_KEY as varchar) + '-' + cast(${TABLE}.PERIOD_KEY as varchar) ;;
  }

  dimension: district_name_legal {
    type: string
    description: "Full legal district name"
    sql: ${TABLE}.District_Legal_Name ;;
  }

  dimension: district_locale {
    type: string
    description: "Shows if the district is flagged as rural"
    sql: ${TABLE}.District_Locale ;;
  }

  dimension: district_locale_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Locale_Code ;;
  }

  dimension: district_location_address_1 {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Location_Address_1 ;;
  }

  dimension: district_location_city {
    type: string
    description: "City of the district office"
    sql: ${TABLE}.District_Location_City ;;
  }

  dimension: district_location_state_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Location_State_Code ;;
  }

  dimension: district_location_state_name {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Location_State_Name ;;
  }

  dimension: district_location_zip_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Location_Zip_Code ;;
  }

  dimension: district_location_address_full {
    type: string
    description: "Full address of the district office location"
    sql: ${TABLE}.District_Location_Address_1+", "+ ${TABLE}.District_Location_City+", "+ ${TABLE}.District_Location_State_Code+" "+${TABLE}.District_Location_Zip_Code;;
  }

  dimension: district_mailing_address_full {
    type: string
    description: "Full mailing address for the district"
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
    description: "Main phone number for the district"
    sql: ${TABLE}.District_Main_Phone_Number ;;
  }

  dimension: district_name {
    type: string
    description: "District name - use this field to display district boundary map data"
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
    description: "Status of the district - open/closed/future/new"
    sql: ${TABLE}.District_Operational_Status ;;
  }

  dimension: district_operational_status_code {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Operational_Status_Code ;;
  }

  dimension: district_organization_type {
    type: string
    description: "Type of district"
    sql: ${TABLE}.District_Organization_Type ;;
  }

  dimension: district_street_address {
    type: string
    hidden: yes
    sql: ${TABLE}.District_Street_Address ;;
  }

  dimension: district_name_full {
    type: string
    hidden: yes
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

  dimension: cte_priorities {
    type: string
    sql: ${TABLE}.cte_priorities ;;
  }

  dimension: cte_region {
    type: string
    sql: ${TABLE}.cte_region ;;
  }

  dimension: indian_education_focus_district {
    type: string
    label: "Focus District - IED"
    description: "District is an Indian Education Dept focus district - Yes/No"
    sql: ${TABLE}.ied_focus ;;
  }

  dimension: martinez_yazzie_focus_district {
    type: string
    label: "Focus District - Martinez-Yazzie"
    description: "District is a Martinez-Yazzie tech order focus district - Yes/No"
    sql: ${TABLE}.my_focus ;;
  }

  dimension: rea_district_code {
    type: number
    hidden: yes
    sql: ${TABLE}.rea_district_code ;;
  }


  measure: count {
    type: count
    description: "Count of Districts"
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
