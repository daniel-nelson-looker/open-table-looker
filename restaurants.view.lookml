- view: restaurants
  sql_table_name: yetiyhlp.restaurants
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension: also_viewed
    type: string
    sql: ${TABLE}.also_viewed

  - dimension: rest_address
    type: string
    sql: ${TABLE}.rest_address

  - dimension: rest_categories
    type: string
    sql: ${TABLE}.rest_categories

  - dimension: rest_city
    type: string
    sql: ${TABLE}.rest_city

  - dimension: rest_id
    type: string
    sql: ${TABLE}.rest_id

  - dimension: rest_lat
    type: number
    sql: ${TABLE}.rest_lat

  - dimension: rest_long
    type: number
    sql: ${TABLE}.rest_long

  - dimension: rest_name
    type: string
    sql: ${TABLE}.rest_name

  - dimension: rest_price
    type: number
    sql: ${TABLE}.rest_price

  - dimension: rest_region
    type: string
    sql: ${TABLE}.rest_region

  - dimension: rest_stars
    type: number
    sql: ${TABLE}.rest_stars

  - dimension: rest_zip
    type: string
    sql: ${TABLE}.rest_zip

  - dimension: review_count_at_scrape
    type: number
    sql: ${TABLE}.review_count_at_scrape

  - dimension: viewed_after_searching
    type: string
    sql: ${TABLE}.viewed_after_searching

  - measure: count
    type: count
    drill_fields: [id, rest_name]

