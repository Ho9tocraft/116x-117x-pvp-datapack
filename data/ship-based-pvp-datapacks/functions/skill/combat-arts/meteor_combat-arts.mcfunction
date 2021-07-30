#天星の魔杖の戦技
#隕石を落とす。
#職業番号13番（召喚士）のみ使用可能だが、同アイテムを持つ5番（魔術師）では別スキルを使用可能になるよう調整する予定
# 魔術師（爆弾）
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Red] at @s as @e[team=Blue,distance=..20] at @s run summon creeper ~ ~ ~ {Silent:true,Team:"Red",ExplosionRadius:5,Fuse:10,ActiveEffects:[{Id:14b,Amplifier:0,Ambient:true,ShowParticles:false,ShowIcon:false,Duration:12000}],ignited:true}
execute as @a[scores={ship-num=5,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Blue] at @s as @e[team=Red,distance=..20] at @s run summon creeper ~ ~ ~ {Silent:true,Team:"Blue",ExplosionRadius:5,Fuse:10,ActiveEffects:[{Id:14b,Amplifier:0,Ambient:true,ShowParticles:false,ShowIcon:false,Duration:12000}],ignited:true}

# 召喚士（隕石）
#  オーナーUUIDを抽出
data remove storage staff_of_meteor OwnerUUID
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor] at @s run data modify storage staff_of_meteor OwnerUUID set from entity @s UUID
#  火球を顕現
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Red] at @s as @e[team=Blue,limit=1,sort=random] at @s run summon fireball ~ ~10 ~ {Motion:[0.0,-1.5,0.0],ExplosionPower:10,Tags:["meteor_red"]}
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Blue] at @s as @e[team=Red,limit=1,sort=random] at @s run summon fireball ~ ~10 ~ {Motion:[0.0,-1.5,0.0],ExplosionPower:10,Tags:["meteor_blu"]}
#  UUIDを適用
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Red] at @s as @e[type=fireball,tag=meteor_red] at @s run data modify entity @s Owner set from storage staff_of_meteor OwnerUUID
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor,team=Blue] at @s as @e[type=fireball,tag=meteor_blu] at @s run data modify entity @s Owner set from storage staff_of_meteor OwnerUUID
#  FocusPointを減らす（Focus Point Remover）/CT変更（60 sec）
execute as @a[scores={ship-num=13,skill3-ct=0,FocusPoint=20..},predicate=ship-based-pvp-datapacks:staff-of-meteor] at @s run scoreboard players remove @s FocusPoint 20
execute as @a[scores={ship-num=13,skill3-ct=0},predicate=ship-based-pvp-datapacks:staff-of-meteor] at @s run scoreboard players set @s skill3-ct 60
