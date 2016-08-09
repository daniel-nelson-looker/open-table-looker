- view: restattributes
  sql_table_name: yetiyhlp.restattributes
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: attrb
    type: string
    sql: ${TABLE}.attrb

  - dimension: attrb_val
    type: string
    sql: ${TABLE}.attrb_val

  - dimension: rest_id
    type: string
    sql: ${TABLE}.rest_id

  - measure: count
    type: count
    drill_fields: [id]

