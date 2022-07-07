view: course_instruct_staff_student_snapshot {
  sql_table_name: stars.course_instruct_staff_student_snapshot ;;
  label: "Course Enrollment Snapshot - Students & Staff"

  dimension: advanced_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Advanced Course" ;;
  }

  dimension: advanced_indicator {
    type: string
    label: "Advanced"
    description: "Course is an advanced class - Yes/No"
    sql: ${TABLE}."Advanced Indicator" ;;
  }

  dimension: advanced_placement_course {
    type: string
    description: "Course is advanced placement - Yes/No"
    hidden: yes
    sql: ${TABLE}."Advanced Placement Course" ;;
  }

  dimension: advanced_placement_indicator {
    type: string
    label: "Advanced Placement"
    description: "Course is advanced placement - Yes/No"
    sql: ${TABLE}."Advanced Placement Indicator" ;;
  }

  dimension: allowable_course_gender {
    type: string
    hidden: yes
    sql: ${TABLE}."Allowable Course Gender" ;;
  }

  dimension: alternate_course_id {
    type: string
    label: "Alternate Credit Course Code"
    description: "If this course is being used as alternative credit, this is the code for the course being replaced."
    sql: ${TABLE}."Alternate Course ID" ;;
  }

  dimension: alternate_credit_course_key {
    type: number
    hidden: yes
    sql: ${TABLE}."ALTERNATE CREDIT COURSE KEY" ;;
  }

  dimension: alternate_instruction_language {
    type: string
    description: "Language course is taught in if other than English"
    sql: ${TABLE}."Alternate Instruction Language" ;;
  }

  dimension: alternate_instruction_language_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Alternate Instruction Language Code" ;;
  }

  dimension: basic_indicator {
    type: string
    label: "Basic/General"
    description: "Course is a basic/general class: Yes/No"
    sql: ${TABLE}."Basic Indicator" ;;
  }

  dimension: bilingual_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Bilingual Course" ;;
  }

  dimension: capstone_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Capstone Course" ;;
  }

  dimension: career_and_technical_education_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Career and Technical Education Course" ;;
  }

  dimension: career_tech_indicator {
    type: string
    label: "Career Technical"
    description: "Course is a career and technical class"
    sql: ${TABLE}."Career Tech Indicator" ;;
  }

  dimension: ci_course_special_program {
    type: string
    hidden: yes
    sql: ${TABLE}."CI Course Special Program" ;;
  }

  dimension: ci_course_special_program_code {
    type: string
    label: "BEP Course"
    description: "Indicates if course is part of a BEP (Bilingual Multicultural Education Program)"
    sql: ${TABLE}."CI Course Special Program Code" ;;
  }

  dimension: class_period {
    type: string
    description: "Type of class period: AM - Morning / PM - Afternoon / FD - Full Day / SEM - Semester / TRI - Trimester / YR - Year-long / BLK - Block / QTR - Quarter / SP - Self-paced / PO - Pull-out"
    sql: ${TABLE}."Class Period" ;;
  }

  dimension: college_level_course {
    type: string
    hidden: yes
    sql: ${TABLE}."College Level Course" ;;
  }

  dimension: core_course {
    type: string
    label: "Core"
    description: "Course is a core class: Yes/No"
    sql: ${TABLE}."Core Course" ;;
  }

  dimension: course_content_key {
    type: number
    hidden: yes
    sql: ${TABLE}."COURSE CONTENT KEY" ;;
  }

  dimension_group: course_enrollment_effective {
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
    sql: ${TABLE}."Course Enrollment Effective Date" ;;
  }

  dimension: course_id {
    type: string
    label: "Course Code"
    description: "Course Code"
    sql: ${TABLE}."Course ID" ;;
  }

  dimension: course_instructor_snapshot_key {
    type: number
    hidden: yes
    sql: ${TABLE}."COURSE INSTRUCTOR SNAPSHOT KEY" ;;
  }

  dimension: course_instructor_snapshot_key_ce {
    type: number
    hidden: yes
    sql: ${TABLE}."COURSE INSTRUCTOR SNAPSHOT KEY CE" ;;
  }

  dimension: course_key {
    type: number
    hidden: yes
    sql: ${TABLE}."COURSE KEY" ;;
  }

  dimension: course_maximum_grade_level {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Maximum Grade Level" ;;
  }

  dimension: course_maximum_grade_level_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Maximum Grade Level Code" ;;
  }

  dimension: course_maximum_grade_level_order {
    type: number
    hidden: yes
    sql: ${TABLE}."Course Maximum Grade Level Order" ;;
  }

  dimension: course_minimum_grade_level {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Minimum Grade Level" ;;
  }

  dimension: course_minimum_grade_level_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Minimum Grade Level Code" ;;
  }

  dimension: course_minimum_grade_level_order {
    type: number
    hidden: yes
    sql: ${TABLE}."Course Minimum Grade Level Order" ;;
  }

  dimension: course_non_traditional_gender {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Non Traditional Gender" ;;
  }

  dimension: course_non_traditional_gender_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Non Traditional Gender Code" ;;
  }

  dimension: course_section_number {
    type: string
    description: "Local class section number"
    sql: ${TABLE}."Course Section Number" ;;
  }

  dimension: course_sequence_number {
    type: number
    hidden: yes
    sql: ${TABLE}."Course Sequence Number" ;;
  }

  dimension: course_special_program {
    type: string
    label: "Course Special Program"
    description: "Course is a Dual Credit or Concurrent Enrollment class"
    sql: ${TABLE}."Course Special Program" ;;
  }

  dimension: course_special_program_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Special Program Code" ;;
  }

  dimension: course_subject_area {
    type: string
    description: "Subject area of the course"
    sql: ${TABLE}."Course Subject Area" ;;
  }

  dimension: course_subject_area_code {
    type: string
    hidden: yes
    sql: ${TABLE}."Course Subject Area Code" ;;
  }

  dimension: date_description {
    type: string
    hidden: yes
    sql: ${TABLE}."Date Description" ;;
  }

  dimension: delivery_model_key_ce {
    type: number
    hidden: yes
    sql: ${TABLE}."DELIVERY MODEL KEY CE" ;;
  }

  dimension: distance_learning_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Distance Learning Course" ;;
  }

  dimension: district_code {
    type: string
    hidden: yes
    sql: ${TABLE}."District Code" ;;
  }

  dimension: district_key {
    type: number
    hidden: yes
    sql: ${TABLE}."DISTRICT KEY" ;;
  }

  dimension: dual_credit_course {
    type: string
    label: "Dual Credit"
    description: "Course is a dual credit couse - Yes/No"
    sql: ${TABLE}."Dual Credit Course" ;;
  }

  dimension: elective_indicator {
    type: string
    label: "Elective"
    description: "Course is an elective class: Yes/No"
    sql: ${TABLE}."Elective Indicator" ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}."End Date" ;;
  }

  dimension: enrollment_key {
    type: number
    hidden: yes
    sql: ${TABLE}."ENROLLMENT KEY" ;;
  }

  dimension: exclude_from_evaluation {
    type: string
    hidden: yes
    sql: ${TABLE}."Exclude From Evaluation Indicator" ;;
  }

  dimension: full_course_name {
    type: string
    label: "Course Name - Full"
    description: "Full course name - local"
    sql: ${TABLE}."Full Course Name" ;;
  }

  dimension: gifted_indicator {
    type: string
    label: "Gifted"
    description: "Course is a gifted class: Yes/No"
    sql: ${TABLE}."Gifted Indicator" ;;
  }

  dimension: honors_indicator {
    type: string
    description: "Course is an honors course: Yes/No"
    sql: ${TABLE}."Honors Indicator" ;;
  }

  dimension: ib_course {
    type: string
    hidden: yes
    sql: ${TABLE}."IB Course" ;;
  }

  dimension: international_baccalaureate_indicator {
    type: string
    label: "International Baccalaureate"
    description: "Course is an international baccalaureate (IB) class: Yes/No"
    sql: ${TABLE}."International Baccalaureate Indicator" ;;
  }

  dimension: lab_component_indicator {
    type: string
    label: "Lab Component"
    description: "Course has a lab component: Yes/No"
    sql: ${TABLE}."Lab Component Indicator" ;;
  }

  dimension: location_id {
    type: string
    hidden: yes
    sql: ${TABLE}."Location ID" ;;
  }

  dimension: location_key {
    type: number
    hidden: yes
    sql: ${TABLE}."LOCATION KEY" ;;
  }

  dimension: long_course_description {
    type: string
    label: "Course Description - Long"
    description: "Long course description"
    sql: ${TABLE}."Long Course Description" ;;
  }

  dimension: marking_period {
    type: string
    hidden: yes
    sql: ${TABLE}."Marking Period" ;;
  }

  dimension: marking_period_number {
    type: number
    hidden: yes
    sql: ${TABLE}."Marking Period Number" ;;
  }

  dimension_group: modified_date_course {
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
    sql: ${TABLE}."modified date COURSE" ;;
  }

  dimension_group: modified_date_course_enroll {
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
    sql: ${TABLE}."modified date COURSE_ENROLL" ;;
  }

  dimension_group: modified_date_crse_instruct_snapshot {
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
    sql: ${TABLE}."modified date CRSE_INSTRUCT_SNAPSHOT" ;;
  }

  dimension_group: modified_date_period {
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
    sql: ${TABLE}."modified date PERIOD" ;;
  }

  dimension_group: modified_date_staff_snapshot {
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
    sql: ${TABLE}."modified date STAFF_SNAPSHOT" ;;
  }

  dimension_group: original_hire {
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
    sql: ${TABLE}."Original Hire Date" ;;
  }

  dimension: period_key_enrollment_period_marking_period_number {
    type: number
    hidden: yes
    sql: ${TABLE}."PERIOD KEY  Enrollment Period Marking Period Number" ;;
  }

  dimension: period_key_school_year {
    type: number
    hidden: yes
    sql: ${TABLE}."PERIOD KEY  School Year" ;;
  }

  dimension: period_level {
    type: string
    hidden: yes
    description: "40D, 80D, etc"
    sql: ${TABLE}."Period Level" ;;
  }

  dimension: period_level_type {
    type: string
    hidden: yes
    description: "Marking Period"
    sql: ${TABLE}."Period Level Type" ;;
  }

  dimension: pre_ap_course {
    type: string
    hidden: yes
    sql: ${TABLE}."PreAP Course" ;;
  }

  dimension: primary_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}."Primary Location ID" ;;
  }

  dimension: primary_location_name {
    type: string
    hidden: yes
    sql: ${TABLE}."Primary Location Name" ;;
  }

  dimension: remedial_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Remedial Course" ;;
  }

  dimension: remedial_indicator {
    type: string
    label: "Remedial"
    description: "Course is a remedial class: Yes/No"
    sql: ${TABLE}."Remedial Indicator" ;;
  }

  dimension_group: school_year {
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
    sql: ${TABLE}."School Year" ;;
  }

  dimension: school_year_designation {
    type: string
    hidden: yes
    sql: ${TABLE}."School Year Designation" ;;
  }

  dimension: semester {
    type: string
    hidden: yes
    sql: ${TABLE}.Semester ;;
  }

  dimension: short_course_description {
    type: string
    label: "Course Description - Short"
    description: "Short course description"
    sql: ${TABLE}."Short Course Description" ;;
  }

  dimension: special_ed_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Special Ed Course" ;;
  }

  dimension: special_ed_indicator {
    type: string
    description: "Course is a special education class: Yes/No"
    sql: ${TABLE}."Special Ed Indicator" ;;
  }

  dimension: staff_e_mail_address {
    type: string
    hidden: yes
    sql: ${TABLE}."Staff eMail Address" ;;
  }

  dimension: staff_id {
    type: string
    hidden: yes
    sql: ${TABLE}."Staff ID" ;;
  }

  dimension: staff_key_other_instructor_1 {
    type: number
    hidden: yes
    sql: ${TABLE}."STAFF KEY Other Instructor 1" ;;
  }

  dimension: staff_key_other_instructor_2 {
    type: number
    hidden: yes
    sql: ${TABLE}."STAFF KEY Other Instructor 2" ;;
  }

  dimension: staff_key_primary_instructor {
    type: number
    hidden: yes
    sql: ${TABLE}."STAFF KEY Primary Instructor" ;;
  }

  dimension_group: staff_snapshot {
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
    sql: ${TABLE}."Staff Snapshot Date" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."Start Date" ;;
  }

  dimension_group: start_date_current_year {
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
    sql: ${TABLE}."Start Date Current Year" ;;
  }

  dimension: state_course_course_id {
    type: string
    label: "Course Code - State"
    description: "State course identifier"
    sql: ${TABLE}."State Course Course ID" ;;
  }

  dimension: state_course_district_key {
    type: number
    hidden: yes
    sql: ${TABLE}."State Course District Key" ;;
  }

  dimension: state_course_full_course_name {
    type: string
    label: "Course Name - State"
    description: "The full course name as defined at the state level"
    sql: ${TABLE}."State Course Full Course Name" ;;
  }

  dimension_group: state_course_modified_date_course {
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
    sql: ${TABLE}."State Course modified date COURSE" ;;
  }

  dimension_group: state_course_school_year {
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
    sql: ${TABLE}."State Course School Year" ;;
  }

  dimension: state_district_code {
    type: string
    hidden: yes
    sql: ${TABLE}."State District Code" ;;
  }

  dimension: state_location_id {
    type: string
    hidden: yes
    sql: ${TABLE}."State Location ID" ;;
  }

  dimension: student_id {
    type: string
    hidden: yes
    sql: ${TABLE}."Student ID" ;;
  }

  dimension: student_key {
    type: number
    hidden: yes
    sql: ${TABLE}."STUDENT KEY" ;;
  }

  dimension_group: student_snapshot {
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
    sql: ${TABLE}."Student Snapshot Date" ;;
  }

  dimension: student_snapshot_key {
    type: number
    hidden: yes
    sql: ${TABLE}."STUDENT SNAPSHOT KEY" ;;
  }

  dimension: student_snapshot_key_ce {
    type: number
    hidden: yes
    sql: ${TABLE}."STUDENT SNAPSHOT KEY CE" ;;
  }

  dimension: total_years_of_experience {
    type: number
    hidden: yes
    sql: ${TABLE}."Total Years of Experience" ;;
  }

  dimension: total_years_of_experience_in_district {
    type: number
    hidden: yes
    sql: ${TABLE}."Total Years of Experience in District" ;;
  }

  dimension: work_based_learning_course {
    type: string
    hidden: yes
    sql: ${TABLE}."Work Based Learning Course" ;;
  }

  dimension: year_number {
    type: number
    hidden: yes
    sql: ${TABLE}."Year Number" ;;
  }

  measure: count {
    type: count
    drill_fields: [full_course_name, primary_location_name, state_course_full_course_name]
  }
}
