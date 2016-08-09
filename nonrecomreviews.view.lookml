- view: nonrecomreviews
  sql_table_name: yetiyhlp.nonrecomreviews
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.created_at

  - dimension: rest_id
    type: string
    sql: ${TABLE}.rest_id

  - dimension: rev_score
    type: number
    sql: ${TABLE}.rev_score

  - dimension: review
    type: string
    sql: ${TABLE}.review

  - dimension: user_id
    type: string
    sql: ${TABLE}.user_id

  - dimension: user_location
    type: string
    sql: ${TABLE}.user_location

  - dimension: user_name
    type: string
    sql: ${TABLE}.user_name

  - measure: count
    type: count
    drill_fields: [id, user_name]

