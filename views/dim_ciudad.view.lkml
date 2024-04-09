view: dim_ciudad {
  sql_table_name: public.dim_ciudad ;;

  dimension: cedula_conductor {
    type: string
    sql: ${TABLE}."cedula_conductor" ;;
  }
  dimension: conductor {
    type: string
    sql: ${TABLE}."conductor" ;;
  }
  dimension: day_name {
    type: string
    sql: ${TABLE}."day_name" ;;
  }
  dimension: day_of_month {
    type: number
    sql: ${TABLE}."day_of_month" ;;
  }
  dimension: day_of_week {
    type: number
    sql: ${TABLE}."day_of_week" ;;
  }
  dimension: day_of_year {
    type: number
    sql: ${TABLE}."day_of_year" ;;
  }
  dimension: day_suffix {
    type: string
    sql: ${TABLE}."day_suffix" ;;
  }
  dimension: descripcion_disparador {
    type: string
    sql: ${TABLE}."descripcion_disparador" ;;
  }
  dimension: disparador {
    type: string
    sql: ${TABLE}."disparador" ;;
  }
  dimension: epoch {
    type: number
    sql: ${TABLE}."epoch" ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."fecha" ;;
  }
  dimension_group: first_day_of_quarter {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."first_day_of_quarter" ;;
  }
  dimension_group: first_day_of_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."first_day_of_year" ;;
  }
  dimension_group: last_day_of_month {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_day_of_month" ;;
  }
  dimension_group: last_day_of_quarter {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_day_of_quarter" ;;
  }
  dimension_group: last_day_of_year {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."last_day_of_year" ;;
  }
  dimension: mmddyyyy {
    type: string
    sql: ${TABLE}."mmddyyyy" ;;
  }
  dimension: mmyyyy {
    type: string
    sql: ${TABLE}."mmyyyy" ;;
  }
  dimension: month_actual {
    type: number
    sql: ${TABLE}."month_actual" ;;
  }
  dimension: month_name {
    type: string
    sql: ${TABLE}."month_name" ;;
  }
  dimension: month_name_abbreviated {
    type: string
    sql: ${TABLE}."month_name_abbreviated" ;;
  }
  dimension: numerointerno {
    type: string
    sql: ${TABLE}."numerointerno" ;;
  }
  dimension: placa {
    type: string
    sql: ${TABLE}."placa" ;;
  }
  dimension: quarter_actual {
    type: number
    sql: ${TABLE}."quarter_actual" ;;
  }
  dimension: quarter_name {
    type: string
    sql: ${TABLE}."quarter_name" ;;
  }
  dimension: velocidad {
    type: number
    sql: ${TABLE}."velocidad" ;;
  }
  dimension: week_of_month {
    type: number
    sql: ${TABLE}."week_of_month" ;;
  }
  dimension: week_of_year {
    type: number
    sql: ${TABLE}."week_of_year" ;;
  }
  dimension: week_of_year_iso {
    type: string
    sql: ${TABLE}."week_of_year_iso" ;;
  }
  dimension: weekend_indr {
    type: yesno
    sql: ${TABLE}."weekend_indr" ;;
  }
  dimension: year_actual {
    type: number
    sql: ${TABLE}."year_actual" ;;
  }
  measure: count {
    type: count
    drill_fields: [day_name, month_name, quarter_name]
  }
}
