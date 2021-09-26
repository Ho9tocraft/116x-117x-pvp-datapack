#ステージ選択の投票システム
tellraw @a [{"text":"Stage Select Voting\n"},{"text":"[FEW WORLD]","color":"green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger stage-sel-vote set 0"}},{"text":","},{"text":"[THE DESERT]","color":"green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger stage-sel-vote set 1"}},{"text":","},{"text":"[SUBNAUTICA]","color":"green","underlined": true,"clickEvent": {"action": "run_command","value": "/trigger stage-sel-vote set 2"}},{"text":","}]
schedule function ship-based-pvp-datapacks:auc/stage-sel-vote/result 30s
