connection: "default_bigquery_connection"

datagroup: ea_ef_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ea_ef_default_datagroup

include: "/views/*.view.lkml"

##### Explore Assistant #####

### Example, Refinement & Sample Fetching
explore: explore_assistant_examples {
  join: explore_assistant_refinement_examples {
    type: left_outer
    relationship: one_to_one
    sql_on: ${explore_id} = ${explore_assistant_refinement_examples.explore_id} ;;
  }
  join: explore_assistant_samples {
    type: left_outer
    relationship: one_to_one
    sql_on: ${explore_id} = ${explore_assistant_samples.explore_id} ;;
  }
}


### BQML Model Access
explore: explore_assistant {}
