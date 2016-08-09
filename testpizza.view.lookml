- view: testpizza
  sql_table_name: yetiyhlp.testpizza
  fields:

  - dimension: from_event_id
    type: string
    sql: ${TABLE}.from_event_id

  - dimension: to_event_id
    type: number
    sql: ${TABLE}.to_event_id

  - dimension: treatment_cycle_referral_id
    type: string
    sql: ${TABLE}.treatment_cycle_referral_id

  - measure: count
    type: count
    drill_fields: []

