#試合中にログインしてきたプレイヤーを自動的にスペクテイターモードに変更する
execute if score #Helper CombatMode matches 0..3 as @a[scores={ship-num=0},gamemode=!spectator] at @s run tag @s add spectator_loaded
execute if score #Helper CombatMode matches 0..3 as @a[scores={ship-num=0},gamemode=!spectator,tag=spectator_loaded] at @s run gamemode spectator @s
execute if score #Helper CombatMode matches 0..3 as @a[scores={ship-num=0},gamemode=spectator,tag=spectator_loaded] at @s run tellraw @a[gamemode=adventure] ["",{"text":"\u8a66\u5408\u4e2d\u306b\u30d7\u30ec\u30a4\u30e4\u30fc\u304c\u5165\u3063\u3066\u304d\u305f\u3088\u3046\u3067\u3059\uff1a"},{"selector":"@s"}]
execute if score #Helper CombatMode matches 0..3 as @a[scores={ship-num=0},gamemode=spectator,tag=spectator_loaded] at @s run tag @s remove spectator_loaded
