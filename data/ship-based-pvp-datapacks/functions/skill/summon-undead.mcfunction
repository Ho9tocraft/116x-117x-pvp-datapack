#アンデッド召喚
#アンデッドを召喚する
#アンデッドのスキルは個別で呼び出すが、CT処理はここで行う
#region モブスポーン処理
## ゾンビ
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Red] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^ ^ ^0.5 run summon zombie ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Red",PersistenceRequired:1b,Health:120f,CanBreakDoors:0b,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12},{Name:"generic.attack_damage",Base:13}],ActiveEffects:[{Id:12b,Duration:1000000,Amplifier:0}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Red] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^ ^ ^-0.5 run summon zombie ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Red",PersistenceRequired:1b,Health:120f,CanBreakDoors:0b,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12},{Name:"generic.attack_damage",Base:13}],ActiveEffects:[{Id:12b,Duration:1000000,Amplifier:0}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Blue] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^ ^ ^0.5 run summon zombie ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Blue",PersistenceRequired:1b,Health:120f,CanBreakDoors:0b,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12},{Name:"generic.attack_damage",Base:13}],ActiveEffects:[{Id:12b,Duration:1000000,Amplifier:0}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Blue] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^ ^ ^-0.5 run summon zombie ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Blue",PersistenceRequired:1b,Health:120f,CanBreakDoors:0b,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12},{Name:"generic.attack_damage",Base:13}],ActiveEffects:[{Id:12b,Duration:1000000,Amplifier:0}],DeathLootTable:"minecraft:empty"}

## スケルトン
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Red] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^0.5 ^ ^ run summon skeleton ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Red",PersistenceRequired:1b,Health:120f,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Red] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^-0.5 ^ ^ run summon skeleton ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Red",PersistenceRequired:1b,Health:120f,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Blue] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^0.5 ^ ^ run summon skeleton ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Blue",PersistenceRequired:1b,Health:120f,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12}],DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast,team=Blue] at @s as @e[distance=..30,sort=nearest,limit=1] at @s positioned ^-0.5 ^ ^ run summon skeleton ~ ~ ~ {Glowing:1b,CustomNameVisible:0b,Team:"Blue",PersistenceRequired:1b,Health:120f,Tags:["summoned"],CustomName:'{"text":"死霊術師の尖兵"}',HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:power",lvl:10s},{id:"minecraft:infinity",lvl:1s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:fire_protection",lvl:4s},{id:"minecraft:blast_protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:thorns",lvl:3s},{id:"minecraft:binding_curse",lvl:1s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:"generic.max_health",Base:120},{Name:"generic.follow_range",Base:128},{Name:"generic.armor",Base:20},{Name:"generic.armor_toughness",Base:12}],DeathLootTable:"minecraft:empty"}
#endregion

#region 死霊術師の尖兵：スキルCT初期化処理
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=summoned,tag=!necro_initialized,type=#ship-based-pvp-datapacks:undead] at @s run scoreboard players set @s skill1-ct 0
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=summoned,tag=!necro_initialized,type=#ship-based-pvp-datapacks:undead] at @s run scoreboard players set @s skill2-ct 0
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=summoned,tag=!necro_initialized,type=#ship-based-pvp-datapacks:undead] at @s run scoreboard players set @s skill3-ct 0
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=summoned,tag=!necro_initialized,type=#ship-based-pvp-datapacks:undead] at @s run tag @s add necro_initialized
#endregion

#region スキル使用処理
## FP処理
execute as @a[scores={ship-num=17,FocusPoint=40..,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s run scoreboard players remove @s FocusPoint 40
## CT処理
execute as @a[scores={ship-num=17,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s run scoreboard players set @s skill3-ct 15
## FP不足処理
execute as @a[scores={ship-num=17,skill3-ct=..5,FocusPoint=..39}] at @s run scoreboard players set @s skill3-ct 5
#endregion

#region 死霊術師の尖兵：スキル一覧
## スケルトン
execute as @e[scores={skill1-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run function ship-based-pvp-datapacks:skill/summoned_necromancer/regeneration
execute as @e[scores={skill2-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run function ship-based-pvp-datapacks:skill/summoned_necromancer/resistance
execute as @e[scores={skill3-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run function ship-based-pvp-datapacks:skill/summoned_necromancer/strength
## ゾンビ
execute as @e[scores={skill1-ct=0},type=zombie,tag=summoned,tag=necro_initialized] at @s run function ship-based-pvp-datapacks:skill/summoned_necromancer/pseudo-invincible
execute as @e[scores={skill2-ct=0},type=zombie,tag=summoned,tag=necro_initialized] at @s run function ship-based-pvp-datapacks:skill/summoned_necromancer/strength
#endregion

#region 死霊術師の尖兵：スキルCT処理
## スケルトン
execute as @e[scores={skill1-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run scoreboard players set @s skill1-ct 60
execute as @e[scores={skill2-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run scoreboard players set @s skill2-ct 40
execute as @e[scores={skill3-ct=0},type=skeleton,tag=summoned,tag=necro_initialized] at @s run scoreboard players set @s skill3-ct 30
## ゾンビ
execute as @e[scores={skill1-ct=0},type=zombie,tag=summoned,tag=necro_initialized] at @s run scoreboard players set @s skill1-ct 60
execute as @e[scores={skill2-ct=0},type=zombie,tag=summoned,tag=necro_initialized] at @s run scoreboard players set @s skill2-ct 30
#endregion
