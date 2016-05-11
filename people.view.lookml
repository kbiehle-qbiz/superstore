- view: people
  sql_table_name: People
  fields:

  - dimension: person
    type: string
    sql: ${TABLE}.Person

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - measure: count
    type: count
    drill_fields: []

