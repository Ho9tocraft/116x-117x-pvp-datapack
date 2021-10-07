#結月の担い手
#give @p minecraft:player_head{display:{Name:'{"text":"Yuzuki-Handheld"}'},SkullOwner:{Id:[I;1814775462,2096974769,-1419531079,1324238040],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI4YTcyMDFmYzVhOTI1YmNjYWYxNDA5NzM5N2FjMTBkMmExNDNkMDE0NjZmN2JiNjBjZmY5MjhmNWJmN2FjZiJ9fX0="}]}}} 1
summon skeleton ~ ~ ~ {PersistenceRequired:1b,Health:5000f,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:sharpness",lvl:6s}]}},{id:"minecraft:diamond_sword",Count:1b,tag:{HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:sharpness",lvl:6s}]}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s}]}},{id:"minecraft:netherite_leggings",Count:1b,tag:{HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{HideFlags:5,Unbreakable:1b,citTexture:Tamafuri,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s}]}},{id:"minecraft:player_head",Count:1b,tag:{HideFlags:5,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s}],SkullOwner:{Id:[I;1814775462,2096974769,-1419531079,1324238040],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI4YTcyMDFmYzVhOTI1YmNjYWYxNDA5NzM5N2FjMTBkMmExNDNkMDE0NjZmN2JiNjBjZmY5MjhmNWJmN2FjZiJ9fX0="}]}}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:"generic.max_health",Base:5000},{Name:"generic.follow_range",Base:128}],Tags:["Yuzuki_HandHeld"],Team:"Red",CustomName:'{"text": "死した神稚児","color": "dark_red"}',CustomNameVisible:1b}
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] skill1-ct 30
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] skill2-ct 30
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] skill3-ct 30
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] skill4-ct 30
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] awake_gauge 0
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] kichigaiking -1
scoreboard players set @e[type=skeleton,tag=Yuzuki_HandHeld] TraceOn -1
effect give @e[type=skeleton,tag=Yuzuki_HandHeld] invisibility 800000 0 true
effect give @e[type=skeleton,tag=Yuzuki_HandHeld] resistance 30 4 true
bossbar add minecraft:boss_yuzuki_handheld {"text": "結月の担い手","color": "red"}
bossbar set boss_yuzuki_handheld color purple
bossbar set boss_yuzuki_handheld max 5000
bossbar set boss_yuzuki_handheld players @a
bossbar set boss_yuzuki_handheld style notched_10
bossbar set boss_yuzuki_handheld value 5000
bossbar set boss_yuzuki_handheld visible true
