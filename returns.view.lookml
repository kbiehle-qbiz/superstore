- view: returns
  sql_table_name: Returns
  fields:

  - dimension: order_id
    type: string
    # hidden: true
    sql: ${TABLE}.`Order ID`

  - dimension: returned
    type: string
    sql: ${TABLE}.Returned

  - measure: count
    type: count
    drill_fields: [orders.product_name, orders.order_id, orders.customer_name]

