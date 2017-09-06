view: player_names {
  sql_table_name: FIFA_Player_Data.player_names ;;

  dimension: string_field_0 {
    type: string
    label: "Player Name"
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
