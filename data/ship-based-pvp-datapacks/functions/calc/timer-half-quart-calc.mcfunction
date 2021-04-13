#1/2、1/4とかそういうのの計算

#1.nbtストレージを作成
data remove storage timer_calc Result
data modify storage timer_calc Result append value 0
data modify storage timer_calc Result append value 0
data modify storage timer_calc Result append value 0
#2.等倍、0.5倍、0.25倍の順にscore getしつつ処理
execute store result storage timer_calc Result[0] int 1 run scoreboard players get #Helper timer_battle-max
execute store result storage timer_calc Result[1] int 0.5 run scoreboard players get #Helper timer_battle-max
execute store result storage timer_calc Result[2] int 0.25 run scoreboard players get #Helper timer_battle-max
#3.[1][2]の結果を取得、scoreboardへ代入
execute store result score #Helper timer_battle-hf run data get storage timer_calc Result[1]
execute store result score #Helper timer_battle-qa run data get storage timer_calc Result[2]

