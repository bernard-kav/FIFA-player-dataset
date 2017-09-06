view: player_personal_info {

    sql_table_name: FIFA_Player_Data.player_personal_info ;;

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

    dimension: age {
      type: number
      sql: ${TABLE}.Age ;;
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

    dimension: club_position {
      type: string
      group_label: "Position"
      sql: ${TABLE}.Club_Position ;;
    }

    dimension: national_position {
      type: string
      group_label: "Position"
      sql: ${TABLE}.National_Position ;;
  }

    dimension: preffered_position {
      type: string
      group_label: "Position"
      sql: ${TABLE}.Preffered_Position ;;
  }

    dimension: contract_expiry {
      type: number
      sql: ${TABLE}.Contract_Expiry ;;
    }

    dimension: height {
      type: string
      sql: ${TABLE}.Height ;;
    }

    dimension: weight {
      type: string
      sql: ${TABLE}.Weight ;;
  }

    dimension: nationality {
      type: string
      sql: ${TABLE}.Nationality ;;
    }

    dimension: preffered_foot {
      type: string
      sql: ${TABLE}.Preffered_Foot ;;
    }

    dimension: weak_foot {
     type: number
      sql: ${TABLE}.Weak_foot ;;
  }

    measure: count {
      type: count
      drill_fields: [name]
    }


  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: player_personal_info {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
