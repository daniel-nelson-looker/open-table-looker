- view: restmenuitems
  sql_table_name: yetiyhlp.restmenuitems
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: menu_item
    type: string
    sql: ${TABLE}.menu_item

  - dimension: rest_id
    type: string
    sql: ${TABLE}.rest_id

  - measure: count
    type: count
    drill_fields: [id]

