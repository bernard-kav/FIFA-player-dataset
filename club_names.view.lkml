view: club_names {
  sql_table_name: FIFA_Player_Data.club_names ;;

  dimension: string_field_0 {
    type: string
    label: "Club Name"
    sql: ${TABLE}.string_field_0 ;;
  }

  dimension: string_field_1 {
    type: string
    label: "URL"
    hidden: yes
    sql: ${TABLE}.string_field_1 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
