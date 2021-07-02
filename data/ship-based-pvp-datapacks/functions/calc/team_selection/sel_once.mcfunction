#ループ処理
execute if score #Helper team-sel-rd-res matches 1.. run team join Blue @r[team=Selection]
execute if score #Helper team-sel-rd-res matches 1.. run scoreboard players remove #Helper team-sel-rd-res 1
execute if score #Helper team-sel-rd-res matches 0 run team join Red @a[team=Selection]
#いけるかどうか分からないが、再帰処理
execute if score #Helper team-sel-rd-res matches 1.. run schedule function ship-based-pvp-datapacks:calc/team_selection/sel_once 5t
