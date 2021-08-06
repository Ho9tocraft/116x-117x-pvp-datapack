#召喚獣召喚コマンドです。
#1.-a: ラヴェジャーを召喚・使役
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast,team=Red] at @s run summon ravager ~ ~ ~ {Team:"Red",PersistenceRequired:1b,Health:200f,AttackTick:0,RoarTick:0,StunTick:0,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["SummonPet"],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.attack_damage",Base:25},{Name:"generic.armor",Base:10},{Name:"generic.follow_range",Base:128}],Glowing:true,DeathLootTable:"minecraft:empty"}
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast,team=Blue] at @s run summon ravager ~ ~ ~ {Team:"Blue",PersistenceRequired:1b,Health:200f,AttackTick:0,RoarTick:0,StunTick:0,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["SummonPet"],Attributes:[{Name:"generic.max_health",Base:200},{Name:"generic.attack_damage",Base:25},{Name:"generic.armor",Base:10},{Name:"generic.follow_range",Base:128}],Glowing:true,DeathLootTable:"minecraft:empty"}
#1.-b: ラヴェジャーの初期設定
#1.-b-i: スキル1: 再生の咆哮(CT60sec、5秒後に開始)
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=SummonPet,type=ravager] at @s run scoreboard players set @s skill1-ct 5
#1.-b-ii: スキル2: 雷霆の咆哮(CT40sec、5秒後に開始)
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=SummonPet,type=ravager] at @s run scoreboard players set @s skill2-ct 5
#1.-b-iii: スキル3: 絶対停止の咆哮(CT2min、45秒後に開始)
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast] at @s as @e[tag=SummonPet,type=ravager] at @s run scoreboard players set @s skill3-ct 45
#コメント: 優先度は3→2→1（CT降順）

#2. スキル使用処理（FP→CT→FP不足）
#2.-a: FP処理（30消費）
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=120..},predicate=ship-based-pvp-datapacks:summon_beast] at @s run scoreboard players remove @s FocusPoint 120
#2.-b: CT処理（CT: 120 sec）
execute as @a[scores={ship-num=13,skill3-ct=0},predicate=ship-based-pvp-datapacks:summon_beast] at @s run scoreboard players set @s skill3-ct 120
#2.-c: FP不足処理（CT: 5 sec継続）
execute as @a[scores={ship-num=13,skill3-ct=..5,FocusPoint=..119}] at @s run scoreboard players set @s skill3-ct 5

#3. ラヴェジャーのスキル効果処理
execute as @e[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run function ship-based-pvp-datapacks:skill/summoned_ravager/stasis_roar
execute as @e[scores={skill2-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run function ship-based-pvp-datapacks:skill/summoned_ravager/thunder_roar
execute as @e[scores={skill1-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run function ship-based-pvp-datapacks:skill/summoned_ravager/regen_roar

#4. ラヴェジャーのスキルCT処理: すべて呼び出し先に一任…したいところだが一応ここで書く
execute as @e[scores={skill1-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run scoreboard players set @s skill1-ct 60
execute as @e[scores={skill2-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run scoreboard players set @s skill2-ct 40
execute as @e[scores={skill3-ct=0},predicate=ship-based-pvp-datapacks:entity_target/summoned_ravager] at @s run scoreboard players set @s skill3-ct 120

