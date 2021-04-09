#キィィィン、フォォォォォン！
#OBの関数。やりたいからな、しょうがないよね

#スタミナゲージ検知後、移動速度上昇と空腹をかける
execute as @a[predicate=ship-based-pvp-datapacks:overed-boost,scores={stamina=1..,ship-num=2}] at @s if score #Helper CombatMode matches 0..2 run effect give @s speed 4 3 true
execute as @a[predicate=ship-based-pvp-datapacks:overed-boost,scores={stamina=1..,ship-num=2}] at @s if score #Helper CombatMode matches 0..2 run effect give @s hunger 34 5 true


