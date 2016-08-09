- connection: open-table

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: reviews
  joins:
    - join: restaurants
      sql_on: ${reviews.rest_id} = ${restaurants.id}
      relationship: many_to_one
    
    - join: restattributes
      sql_on: ${restaurants.id} =${restattributes.rest_id}
      relationship: one_to_many
      
    - join: restmenuitems
      sql_on: ${restaurants.id} = ${restmenuitems.rest_id}
      relationship: one_to_many
      

- explore: restaurants
  joins:
    - join: restattributes
      sql_on: ${restaurants.id} =${restattributes.rest_id}
      relationship: one_to_many
      
    - join: restmenuitems
      sql_on: ${restaurants.id} = ${restmenuitems.rest_id}
      relationship: one_to_many
      