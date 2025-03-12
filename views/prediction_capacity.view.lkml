# The name of this view in Looker is "Prediction Capacity"
view: prediction_capacity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mock_dashboard.prediction_capacity` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Region" in Explore.

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: service_capacity {
    type: number
    sql: ${TABLE}.service_capacity ;;
  }
  measure: count {
    type: count
  }
}
