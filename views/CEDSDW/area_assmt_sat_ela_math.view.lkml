view: area_assmt_sat_ela_math {
  sql_table_name: CEDSDW.AREA_Assmt_SAT_ELA_Math ;;

  dimension: accountability_model {
    type: string
    description: "Acountability model used"
    sql: case when left(${TABLE}.AccountabilityModel,1)='1' then 'Yes' else 'No' end ;;
  }
  dimension: adv_math_perf_score {
    type: string
    label: "M - Advanced Math"
    description: "Math Section - Advanced Math: Students will demonstrate the ability to progress to more advanced math courses, including demonstrating an understanding of absolute value, quadratic, exponential, polynomial, rational, radical, and other nonlinear equations. (35% of section, 13-15 questions) Populated with one of seven score bands."
    sql: ${TABLE}.AdvMathPerfScore ;;
  }
  dimension: algebra {
    type: string
    label: "M - Albegra"
    description: "Math Section - Algebra: Students will analyze, fluently solve, and create linear equations and inequalities as well as analyze and fluently solve equations and systems of equations using multiple techniques. (35% of section, 13-15 questions) Populated with one of seven score bands."
    sql: ${TABLE}.Algebra ;;
  }
  dimension: craft_and_structure {
    type: string
    label: "RW - Craft and Structure"
    description: "Reading & Writing Section: Craft and structure - Students will use comprehension, vocabulary, analysis, synthesis, and reasoning skills and knowledge to understand and use high-utility words and phrases in context, evaluate texts rhetorically, and make connections between topically related texts. (28% of section, 13-15 questions) Populated with one of seven score bands."
    sql: ${TABLE}.CraftAndStructure ;;
  }
  dimension: data_collection_name {
    type: string
    hidden: yes
    sql: ${TABLE}.DataCollectionName ;;
  }
  dimension: elaprof_d {
    type: number
    label: "NM Proficiency Score - ELA"
    description: "ELA NM Proficiency Score: 1 = Well State Below Expectations,  2 = Below State Expectations,  3 = At State Expectations, 4 = Above State Expectations: (Proficiency is a score of 480 or higher)"
    sql: ${TABLE}.ELAProf ;;
  }
  measure: elaprof {
    type: average
    label: "NM Proficiency Score - ELA"
    description: "ELA NM Proficiency Score: 1 = Well State Below Expectations,  2 = Below State Expectations,  3 = At State Expectations, 4 = Above State Expectations: (Proficiency is a score of 480 or higher)"
    sql: ${TABLE}.ELAProf*1.00 ;;
  }
  dimension: erwscore_d {
    type: number
    label: "Reading & Writing Section Score"
    description: "Evidence based reading & writing section score: 200-800"
    sql: ${TABLE}.ERWScore ;;
  }
  measure: erwscore {
    type: average
    label: "Reading & Writing Section Score"
    description: "Evidence based reading & writing section score: 200-800"
    sql: ${TABLE}.ERWScore ;;
  }
  dimension: exp_of_ideas {
    type: string
    label: "RW - Expression of Ideas"
    description: "Reading & Writing Section: Expression of ideas - Students will use the ability to revise texts to improve the effectiveness of written expression and to meet specific rhetorical goals. (20% of section, 8-12 questions) Populated with one of seven score bands."
    sql: ${TABLE}.ExpOfIdeas ;;
  }
  dimension: fact_id {
    type: number
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.FactId ;;
  }
  dimension: geo_and_trig {
    type: string
    label: "M - Geometry and Trigonometry"
    description: "Math Section - Geometry and Trigonometry: Students will solve problems that focus on area and volume; angles, triangles, and trigonometry; and circles. (15% of section, 5-7 questions) Populated with one of seven score bands."
    sql: ${TABLE}.GeoAndTrig ;;
  }
  dimension: grade {
    type: string
    label: "Student Grade Level"
    description: "Grade level at the time of the test: 00-12 (00=K)"
    sql: ${TABLE}.Grade ;;
  }
  dimension: info_and_ideas {
    type: string
    label: "RW - Information & Ideas"
    description: "Reading & Writing Section: Information & Ideas - Students will use comprehension, analysis, and reasoning skills and knowledge and the ability to locate, interpret, evaluate, and integrate information and ideas from texts and informational graphics. (26% of the section, 12-14 questions) Populated with one of seven score bands."
    sql: ${TABLE}.InfoAndIdeas ;;
  }
  dimension: math_prof_d {
    type: number
    label: "NM Proficiency Score - Math"
    description: "Math NM Proficiency Score: 1 = Well State Below Expectations,  2 = Below State Expectations,  3 = At State Expectations, 4 = Above State Expectations: (Proficiency is a score of 530 or higher)"
    sql: ${TABLE}.MathProf ;;
  }
  measure: math_prof {
    type: average
    label: "NM Proficiency Score - Math"
    description: "Math NM Proficiency Score: 1 = Well State Below Expectations,  2 = Below State Expectations,  3 = At State Expectations, 4 = Above State Expectations: (Proficiency is a score of 530 or higher)"
    sql: ${TABLE}.MathProf*1.00 ;;
  }
  dimension: math_score_d {
    type: number
    label: "Math Section Score"
    description: "Math section score: 200-800"
    sql: ${TABLE}.MathScore ;;
  }
  measure: math_score {
    type: average
    label: "Math Section Score"
    description: "Math section score: 200-800"
    sql: ${TABLE}.MathScore ;;
  }
  dimension: math_section {
    type: string
    label: "Math Section Band"
    description: "Score band for the math section, may be blank"
    sql: ${TABLE}.MathSection ;;
  }
  dimension: met_erwsect_bench {
    type: string
    label: "College Board Benchmark - ERW"
    description: "College & Career Readiness: College Board Benchmark Indicator: Y=Yes, N=No; EBRW Section level indicator will be set for all participating students aligning to the current SAT benchmarks."
    sql: ${TABLE}.MetERWSectBench ;;
  }
  dimension: met_math_sect_bench {
    type: string
    label: "College Board Benchmark - Math"
    description: "College & Career Readiness: College Board Benchmark Indicator: Y=Yes, N=No; EBRW Section level indicator will be set for all participating students aligning to the current SAT benchmarks."
    sql: ${TABLE}.MetMathSectBench ;;
  }
  dimension: name_flat_file {
    type: string
    hidden: yes
    sql: ${TABLE}.Name_FlatFile ;;
  }
  dimension: prob_solv_and_data_analysis {
    type: string
    label: "M - Problem Solving and Data Analysis"
    description: "Math Section - Problem Solving and Data Analysis: Students will apply quantitative reasoning about ratios, rates, and proportional relationships; understand and apply unit rate; and analyze and interpret one- and two-variable data. (15% of section, 5-7 questions) Populated with one of seven score bands."
    sql: ${TABLE}.ProbSolvAndDataAnalysis ;;
  }
  dimension: read_and_write_sect {
    type: string
    label: "Reading & Writing Section Band"
    description: "Score band for the reading & writing section, may be blank"
    sql: ${TABLE}.ReadAndWriteSect ;;
  }
  dimension_group: record_end_date {
    type: time
    hidden: yes
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RecordEndDateTime ;;
  }
  dimension_group: record_start_date {
    type: time
    hidden: yes
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.RecordStartDateTime ;;
  }
  dimension: school_number {
    type: string
    label: "District-School Code"
    description: "Identifier code for the district and school location"
    sql: left(${TABLE}.schoolnumber,3) + '-' + right(${TABLE}.schoolnumber,3) ;;
  }
  dimension: school_year {
    type: string
    description: "School year in yyyy-yyyy format"
    sql: left(${TABLE}.SchoolYear,5) + '20' + substring(schoolyear, 6, 2) ;;
  }
  dimension: standard_eng_conv {
    type: string
    label: "RW - Standard English Conventions"
    description: "Reading & Writing Section: Standard English conventions - Students will use editing skills and knowledge to make text conform to core conventions of Standard English sentence structure, usage, and punctuation. (26% of section, 11-15 questions) Populated with one of seven score bands."
    sql: ${TABLE}.StandardEngConv ;;
  }
  dimension: student_uniq_id {
    type: string
    label: "Student ID"
    description: "Unique state student identifier"
    sql: ${TABLE}.StudentUniqId ;;
  }
  dimension: subtest {
    type: string
    description: "Subtest name: LA (Language Arts), Math"
    sql: ${TABLE}.Subtest ;;
  }
  dimension: test {
    type: string
    description: "Name of the test (SAT)"
    sql: ${TABLE}.Test ;;
  }
  dimension_group: testing {
    type: time
    description: "Date the student was tested"
    timeframes: [date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.TestingDate ;;
  }
  dimension: tot_score400_1600 {
    type: number
    label: "SAT Total Score"
    description: "SAT Total Score (Sum of reading and Writing and Math section scores): 400-1600"
    sql: ${TABLE}.TotScore400_1600 ;;
  }
  measure: count {
    type: count
    # drill_fields: [data_collection_name]
  }
}
