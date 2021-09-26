#散開・頭割り警告音声＆パーティクル
execute if score #Helper tick-sec_conv matches 5 as @a[tag=BLU_DISPERSAL] at @s run playsound entity.player.attack.strong master @s
execute if score #Helper tick-sec_conv matches 5 as @a[tag=BLU_SPLITTING] at @s run playsound entity.player.attack.strong master @s
execute as @a[tag=BLU_DISPERSAL] at @s run particle dust 1.000 0.000 0.000 1 ~ ~ ~ 1 10 1 1 100 normal
execute as @a[tag=BLU_SPLITTING] at @s run particle dust 1.000 0.843 0.000 1 ~ ~ ~ 1 10 1 1 100 normal
execute as @a[tag=BLU_SPLITTING] at @s run particle dust 1.000 0.843 0.000 1 ~ ~ ~ 9 0.1 9 1 100 normal
