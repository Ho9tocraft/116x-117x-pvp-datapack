#リスポーン時のFP-reset
#死亡した場合、通貨を含めてアイテムを全ロストするよう変更
clear @s
execute as @s[scores={ship-num=1..}] at @s run function ship-based-pvp-datapacks:ship/awake_skill
execute as @s[scores={ship-num=1}] at @s run function ship-based-pvp-datapacks:ship/knight/knight_init
execute as @s[scores={ship-num=2}] at @s run function ship-based-pvp-datapacks:ship/mercenary/mercenary_init
execute as @s[scores={ship-num=3}] at @s run function ship-based-pvp-datapacks:ship/warrior/warrior_init
execute as @s[scores={ship-num=4}] at @s run function ship-based-pvp-datapacks:ship/herald/herald_init
execute as @s[scores={ship-num=5}] at @s run function ship-based-pvp-datapacks:ship/sorcerer/sorcerer_init
execute as @s[scores={ship-num=6}] at @s run function ship-based-pvp-datapacks:ship/soulbounded-firelinker/sb-firelinker_init
execute as @s[scores={ship-num=7}] at @s run function ship-based-pvp-datapacks:ship/the-harrowed-hunter/the-harrowed-hunter_init
execute as @s[scores={ship-num=8}] at @s run function ship-based-pvp-datapacks:ship/deprived/deprived_init
execute as @s[scores={ship-num=9}] at @s run function ship-based-pvp-datapacks:ship/raider/raider_init
execute as @s[scores={ship-num=10}] at @s run function ship-based-pvp-datapacks:ship/sword-of-darkmoon/sword-of-darkmoon_init
execute as @s[scores={ship-num=11}] at @s run function ship-based-pvp-datapacks:ship/pri-knight/pri-knight_init
execute as @s[scores={ship-num=12}] at @s run function ship-based-pvp-datapacks:ship/cg/cg_init
