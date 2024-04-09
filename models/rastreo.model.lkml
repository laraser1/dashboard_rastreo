connection: "rapido-ochoa-rastreo"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: rastreo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rastreo_default_datagroup

explore: dim_ciudad {}

explore: fact_alertas {}

