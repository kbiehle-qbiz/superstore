- view: customer_order
  derived_table:
    sql: |
      SELECT `Customer ID` as CUSTOMER_ID
        , COUNT(1) AS ORDER_COUNT
      FROM `superstore`.`Orders`
      GROUP BY `Customer ID`
    indexes: [CUSTOMER_ID]
    persist_for: 12 hours
  fields:

  - dimension: CUSTOMER_ID
    primary_key: true
    
  - measure: ORDER_COUNT
    type: number