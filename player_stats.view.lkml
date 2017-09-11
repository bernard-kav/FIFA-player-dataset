view: player_stats {
  sql_table_name: FIFA_Player_Data.player_stats ;;

  dimension: acceleration {
    type: number
    sql: ${TABLE}.Acceleration ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: aggression {
    type: number
    sql: ${TABLE}.Aggression ;;
  }

  dimension: agility {
    type: number
    sql: ${TABLE}.Agility ;;
  }

  dimension: attacking_position {
    type: number
    sql: ${TABLE}.Attacking_Position ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}.Balance ;;
  }

  dimension: ball_control {
    type: number
    sql: ${TABLE}.Ball_Control ;;
  }


  dimension: composure {
    type: number
    sql: ${TABLE}.Composure ;;
  }


  dimension: crossing {
    type: number
    sql: ${TABLE}.Crossing ;;
  }

  dimension: curve {
    type: number
    sql: ${TABLE}.Curve ;;
  }

  dimension: dribbling {
    type: number
    sql: ${TABLE}.Dribbling ;;
  }

  dimension: finishing {
    type: number
    sql: ${TABLE}.Finishing ;;
  }

  dimension: freekick_accuracy {
    type: number
    sql: ${TABLE}.Freekick_Accuracy ;;
  }

  dimension: heading {
    type: number
    sql: ${TABLE}.Heading ;;
  }

  dimension: interceptions {
    type: number
    sql: ${TABLE}.Interceptions ;;
  }

  dimension: jumping {
    type: number
    sql: ${TABLE}.Jumping ;;
  }

  dimension: long_pass {
    type: number
    sql: ${TABLE}.Long_Pass ;;
  }

  dimension: long_shots {
    type: number
    sql: ${TABLE}.Long_Shots ;;
  }

  dimension: marking {
    type: number
    sql: ${TABLE}.Marking ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
    primary_key: yes
  }

#   dimension: national_position {
#     type: string
#     sql: ${TABLE}.National_Position ;;
#   }

  dimension: penalties {
    type: number
    sql: ${TABLE}.Penalties ;;
  }

  dimension: rating {
    type: number
    sql: ${TABLE}.Rating ;;
  }

  dimension: reactions {
    type: number
    sql: ${TABLE}.Reactions ;;
  }

  dimension: short_pass {
    type: number
    sql: ${TABLE}.Short_Pass ;;
  }

  dimension: shot_power {
    type: number
    sql: ${TABLE}.Shot_Power ;;
  }

  dimension: skill_moves {
    type: number
    sql: ${TABLE}.Skill_Moves ;;
  }

  dimension: sliding_tackle {
    type: number
    sql: ${TABLE}.Sliding_Tackle ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.Speed ;;
  }

  dimension: stamina {
    type: number
    sql: ${TABLE}.Stamina ;;
  }

  dimension: standing_tackle {
    type: number
    sql: ${TABLE}.Standing_Tackle ;;
  }

  dimension: strength {
    type: number
    sql: ${TABLE}.Strength ;;
  }

  dimension: vision {
    type: number
    sql: ${TABLE}.Vision ;;
  }

  dimension: volleys {
    type: number
    sql: ${TABLE}.Volleys ;;
  }

  dimension: weak_foot {
    type: number
    sql: ${TABLE}.Weak_foot ;;
  }

  dimension: work_rate {
    type: string
    sql: ${TABLE}.Work_Rate ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  measure: defending {
    type: count
    drill_fields: [age, agility, sliding_tackle, standing_tackle, strength,stamina,composure,balance]
  }
  measure: fastest_player{
    type: max
    sql: ${TABLE}.speed ;;
  }

  measure: count {
    type: count
  }
  measure: average {
    type: average
    sql: ${rating} ;;
  }


}
