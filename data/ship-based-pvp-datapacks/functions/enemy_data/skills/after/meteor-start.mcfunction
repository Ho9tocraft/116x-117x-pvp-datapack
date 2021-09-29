#メテオ発動エフェクト
tellraw @a {"text": "死した神稚児の「メテオ」","color": "green"}
execute as @e[tag=Meteor_Target,team=Blue] at @s run summon fireball ~ ~10 ~ {ExplosionPower:10b,power:[0.0,-0.4,0.0],Motion:[0.0,0.0,0.0]}
execute as @e[tag=Meteor_Target,team=Blue] at @s run tag @s remove Meteor_Target
