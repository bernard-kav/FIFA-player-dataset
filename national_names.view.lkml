view: national_names {
  sql_table_name: FIFA_Player_Data.national_names ;;

  dimension: string_field_0 {
    label: "National Team Name"
    type: string
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    sql: ${TABLE}.string_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
