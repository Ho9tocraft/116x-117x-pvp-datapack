#霊魂の太刀・乱れ散華
#自機中心小範囲に斬撃AoE＆5秒間のスタン
#FP消費はないが、代わりにダメージもない。シールドバッシュやロスリック戦旗みたいな攻撃判定のあるバフ・デバフ効果だと思ったほうがいい
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade,team=Red] at @s as @e[distance=..10,team=Blue] at @s run function ship-based-pvp-datapacks:trigger-process/stun_effect
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade,team=Blue] at @s as @e[distance=..10,team=Red] at @s run function ship-based-pvp-datapacks:trigger-process/stun_effect
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade] at @s run effect give @s speed 3 1 false
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade] at @s run effect give @s instant_damage 1 1 false
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade] at @s run particle sweep_attack ~ ~1 ~ 5 0.1 5 1 1000 normal @a[distance=..15]
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade] at @s run playsound entity.wither.shoot player @a[distance=..15] ~ ~ ~ 80 1.0 0.25
execute as @a[scores={ship-num=6,skill3-ct=0},predicate=ship-based-pvp-datapacks:divine-firelinkers-righthand-blade] at @s run scoreboard players set @s skill3-ct 15

