- view: orders
  sql_table_name: Orders
  fields:

  - dimension: order_id
    primary_key: true
    type: string
    sql: ${TABLE}.`Order ID`

  - dimension: category
    type: string
    sql: ${TABLE}.Category

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: country
    type: string
    sql: ${TABLE}.Country

  - dimension: customer_id
    type: string
    sql: ${TABLE}.`Customer ID`

  - dimension: customer_name
    type: string
    sql: ${TABLE}.`Customer Name`

  - dimension: discount
    type: number
    sql: ${TABLE}.Discount

  - dimension_group: order
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.`Order Date`

  - dimension: postal_code
    type: number
    sql: ${TABLE}.`Postal Code`

  - dimension: product_id
    type: string
    sql: ${TABLE}.`Product ID`

  - dimension: product_name
    type: string
    sql: ${TABLE}.`Product Name`

  - dimension: profit
    type: number
    sql: ${TABLE}.Profit

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: row_id
    type: number
    sql: ${TABLE}.`Row ID`

  - dimension: sales
    type: number
    sql: ${TABLE}.Sales

  - dimension: segment
    type: string
    sql: ${TABLE}.Segment

  - dimension_group: ship
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.`Ship Date`

  - dimension: ship_mode
    type: string
    sql: ${TABLE}.`Ship Mode`

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension: subcategory
    type: string
    sql: ${TABLE}.`Sub-Category`

  - measure: count
    type: count
    drill_fields: [order_id, product_name, customer_name, returns.count]

