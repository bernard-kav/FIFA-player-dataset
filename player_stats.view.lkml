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

  dimension_group: birth {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Birth_Date ;;
  }

  dimension: club {
    type: string
    sql: ${TABLE}.Club ;;
  }

  dimension_group: club_joining {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Club_Joining ;;
  }

  dimension: club_kit {
    type: number
    sql: ${TABLE}.Club_Kit ;;
  }

  dimension: club_position {
    type: string
    sql: ${TABLE}.Club_Position ;;
  }

  dimension: composure {
    type: number
    sql: ${TABLE}.Composure ;;
  }

  dimension: contract_expiry {
    type: number
    sql: ${TABLE}.Contract_Expiry ;;
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

  dimension: gk_diving {
    type: number
    sql: ${TABLE}.GK_Diving ;;
  }

  dimension: gk_handling {
    type: number
    sql: ${TABLE}.GK_Handling ;;
  }

  dimension: gk_kicking {
    type: number
    sql: ${TABLE}.GK_Kicking ;;
  }

  dimension: gk_positioning {
    type: number
    sql: ${TABLE}.GK_Positioning ;;
  }

  dimension: gk_reflexes {
    type: number
    sql: ${TABLE}.GK_Reflexes ;;
  }

  dimension: heading {
    type: number
    sql: ${TABLE}.Heading ;;
  }

  dimension: height {
    type: string
    sql: ${TABLE}.Height ;;
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
  }

  dimension: national_kit {
    type: number
    sql: ${TABLE}.National_Kit ;;
  }

  dimension: national_position {
    type: string
    sql: ${TABLE}.National_Position ;;
  }

  dimension: nationality {
    type: string
    sql: ${TABLE}.Nationality ;;
  }

  dimension: penalties {
    type: number
    sql: ${TABLE}.Penalties ;;
  }

  dimension: preffered_foot {
    type: string
    sql: ${TABLE}.Preffered_Foot ;;
  }

  dimension: preffered_position {
    type: string
    sql: ${TABLE}.Preffered_Position ;;
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

  dimension: weight {
    type: string
    sql: ${TABLE}.Weight ;;
  }

  dimension: work_rate {
    type: string
    sql: ${TABLE}.Work_Rate ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }


}
