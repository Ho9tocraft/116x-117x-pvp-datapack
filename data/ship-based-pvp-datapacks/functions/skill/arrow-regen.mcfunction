#矢の強制補充
#HPがごっそり減る上、一定時間攻撃力が下がる、目を回す
#ブラボのねつ造水銀弾をイメージ。なのでFPも僅かながら回復する

#1.HP減らす
execute as @a[scores={ship-num=7,skill3-ct=0},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run effect give @s instant_damage 1 3 false
#2.デメリット効果の弱体化&吐き気
execute as @a[scores={ship-num=7,skill3-ct=0},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run effect give @s nausea 15 9 false
execute as @a[scores={ship-num=7,skill3-ct=0},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run effect give @s weakness 15 9 false
#3.矢の補充
execute as @a[scores={ship-num=7,skill3-ct=0},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run give @s arrow 16
#4.FP回復
execute as @a[scores={ship-num=7,skill3-ct=0,FocusPoint=..249},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run scoreboard players add @s FocusPoint 10
execute as @a[scores={ship-num=7,skill3-ct=0,FocusPoint=251..},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run scoreboard players set @s FocusPoint 250
execute as @a[scores={ship-num=7,skill3-ct=0},predicate=ship-based-pvp-datapacks:arrow-regeneration] at @s run scoreboard players set @s skill3-ct 40
