#team selのランダマイザになります。
#TRIGGER COMMAND: /team join Selection @a
team join Selection @a
execute store result score #Helper team-sel-rand run execute if entity @a[team=Selection]
execute store result storage team-randomizer member_half int 0.5 run execute if entity @a[team=Selection]
execute store result score #Helper team-sel-rd-res run data get storage team-randomizer member_half 1.0
execute store result score #Helper team-sel-rd-dob run data get storage team-randomizer member_half 2.0
function ship-based-pvp-datapacks:calc/team_selection/sel_once
team join Red @a[team=Selection]

