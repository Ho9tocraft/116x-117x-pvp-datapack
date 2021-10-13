#テラフレア。相手は死ぬ。味方も死ぬ。自分も死ぬ。
execute as @a[tag=TERAFLARE] at @s run tellraw @a [{"selector":"@s","color": "green"},{"text": "のテラフレア"}]
execute as @a[tag=TERAFLARE] at @s run summon creeper ~ ~ ~ {powered:1b,ExplosionRadius:127b,Fuse:4,ignited:1b}
execute as @a[tag=TERAFLARE] at @s run particle dust 1.000 0.549 0.000 100 ~ ~ ~ 160 160 160 1 400 normal
execute as @a[tag=TERAFLARE] at @s run tag @s remove TERAFLARE
