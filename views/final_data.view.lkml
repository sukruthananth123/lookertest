# The name of this view in Looker is "Final Data"
view: final_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mock_dashboard.final_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Analysis Cycle" in Explore.

  dimension: analysis_cycle {
    type: number
    sql: ${TABLE}.analysis_cycle ;;
  }

  dimension: claim_processing {
    type: number
    sql: ${TABLE}.claim_processing ;;
  }

  dimension: csat {
    type: number
    sql: ${TABLE}.csat ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: in_warranty {
    type: number
    sql: ${TABLE}.in_warranty ;;
  }

  dimension: open_claim {
    type: number
    sql: ${TABLE}.open_claim ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: product_group {
    type: string
    sql: ${TABLE}.product_group ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: vehicle_type {
    type: string
    sql: ${TABLE}.vehicle_type ;;
  }

  dimension: warranty_costs {
    type: number
    sql: ${TABLE}.warranty_costs ;;
  }

  dimension: warranty_manager_name {
    type: string
    sql: ${TABLE}.warranty_manager_name ;;
  }
  measure: count {
    type: count
    drill_fields: [warranty_manager_name]
  }
}
