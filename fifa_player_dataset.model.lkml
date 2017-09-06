connection: "fifa_player_dataset"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: club_names {

  join: player_stats {
    type: left_outer
    relationship: one_to_many
    sql_on: ${club_names.string_field_0} = ${player_stats.club} ;;
  }
}
explore: player_stats {
  join: club_names {
    type: left_outer
    relationship: many_to_one
    sql_on: ${player_stats.club} = ${club_names.string_field_0} ;;
  }
  join: national_names {
    type: left_outer
    relationship: many_to_one
    sql_on: ${player_stats.nationality} = ${national_names.string_field_0} ;;
  }
#   join: player_names {
#     type: left_outer
#     relationship: one_to_one
#     sql_on: ${player_stats.name} = ${player_names.string_field_0} ;;
#   }
}
explore: player_personal_info {
  join: player_stats {
    type: left_outer
    relationship: one_to_many
    sql_on: ${player_personal_info.name} = ${player_stats.name} ;;
  }
}
