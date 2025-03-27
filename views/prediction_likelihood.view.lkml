# The name of this view in Looker is "Prediction Likelihood"
view: prediction_likelihood {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `mock_dashboard.Prediction_likelihood` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Average Driving Distance" in Explore.

  dimension: average_driving_distance {
    type: string
    sql: ${TABLE}.average_driving_distance ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: drive {
    type: string
    sql: ${TABLE}.drive ;;
  }

  dimension: failure_category {
    type: string
    sql: ${TABLE}.failure_category ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: likelihood_to_fail {
    type: string
    sql: ${TABLE}.likelihood_to_fail ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: prediction_likelihood_to_fail {
    type: number
    sql: ${TABLE}.prediction_likelihood_to_fail ;;
  }

  dimension: repair_cost {
    type: number
    sql: ${TABLE}.repair_cost ;;
  }

  dimension: risk_label {
    type: string
    sql: ${TABLE}.risk_label ;;
  }

  dimension: risk_level {
    type: number
    sql: ${TABLE}.risk_level ;;
  }

  dimension: risk_of_failure {
    type: number
    sql: ${TABLE}.risk_of_failure ;;
  }

  dimension: type_of_failure {
    type: string
    sql: ${TABLE}.type_of_failure ;;
  }
  measure: count {
    type: count
  }
}
