#データパックの初期化コードになります。
#▽Dummy Player[Helper]
#tick-秒コンバータ(0～20)
scoreboard objectives add tick-sec_conv dummy
#tick最大値(20で折り返し)
scoreboard objectives add tick-max dummy
#準備時間の残り時間(30 sec)
scoreboard objectives add timer_prebattle dummy
#戦闘時間の残り時間(10 min)
scoreboard objectives add timer_battle dummy
#残り時間の上限(変更可能)
scoreboard objectives add timer_battle-max dummy
#上限に比例した半減
scoreboard objectives add timer_battle-hf dummy
#上限に比例したクォーター
scoreboard objectives add timer_battle-qa dummy
#補給チェストの残り時間(3 min)
scoreboard objectives add timer_supply dummy
#赤コーナーの得点(initialization: 0)
scoreboard objectives add point-red dummy
#青コーナーの得点(initialization: 0)
scoreboard objectives add point-blue dummy
#キル発生検知用
scoreboard objectives add killDetect dummy
#両コーナーキル数(ファーストキル発生検知に使用)
scoreboard objectives add killC-bothCorner dummy
#戦闘モード(-1～3)
scoreboard objectives add CombatMode dummy
#ステージ決定
scoreboard objectives add stage-sel-result dummy
#ステージセレクトランダマイザ
scoreboard objectives add stage-sel-rand dummy
#Teamセレクトランダマイザ・全メンバー
scoreboard objectives add team-sel-rand dummy
#TeamSel Randomizer 半メンバー×2
scoreboard objectives add team-sel-rd-dob dummy
#職業選択ランダマイザ（全メンバー）
scoreboard objectives add ship-sel-rand dummy
#Tokenスポーン時間ループ(鉄)
scoreboard objectives add token-sp-iron dummy
#Tokenスポーン時間ループ(金)
scoreboard objectives add token-sp-gold dummy
#Tokenスポーン時間ループ(ダイヤ)
scoreboard objectives add token-sp-diamond dummy
#Tokenスポーン時間フェーズ
scoreboard objectives add token-phase dummy
#FLU演算トークン
scoreboard objectives add flundings_token dummy
#召喚系職業召喚制限（0～4）
# n: 死霊術師（0～4）
# r: 召喚士（0～1）
scoreboard objectives add summon_limit_n dummy
scoreboard objectives add summon_limit_r dummy
#頭割りカウント
scoreboard objectives add splitting-member dummy
#△Dummy Player[Helper]

#▽Player Owned
#職業データ(0～)
scoreboard objectives add ship-num dummy {"text":"職業の番号","color":"gold","bold":true,"italic":false}
#HP表示(観戦)
scoreboard objectives add health-spectate health
#HP表示(赤チーム)
scoreboard objectives add health-red dummy
#HP表示(青チーム)
scoreboard objectives add health-blue dummy
#殺害回数(一時データ/0～1)
scoreboard objectives add killcount-Temp deathCount
#FP(他RPGで言うところのMPに相当する要素/0～)
scoreboard objectives add FocusPoint dummy
#リスポーンクールタイム(10 sec/-1～10:-1はリスポーンクールタイム不必要(Living))
scoreboard objectives add respawn-time dummy
#スキル1CT(0～)
scoreboard objectives add skill1-ct dummy
#スキル2CT(0～)
scoreboard objectives add skill2-ct dummy
#スキル3CT(0～)
scoreboard objectives add skill3-ct dummy
#スキル4CT(0～)
scoreboard objectives add skill4-ct dummy
#STゲージ（※満腹度）
scoreboard objectives add stamina food
#盾受け
scoreboard objectives add shield-guard minecraft.custom:damage_blocked_by_shield
scoreboard objectives add shield-guard-sum dummy
#覚醒ゲージ
scoreboard objectives add awake_gauge dummy
#[狂王の磔]狂王の気紛れ用コード
scoreboard objectives add kichigaiking dummy
scoreboard objectives add KK_RESULT dummy
#[抑止の守護者]トレースコード
scoreboard objectives add TraceOn dummy
#攻撃観測
scoreboard objectives add attack-det minecraft.custom:damage_dealt
#Teamセレクト結果（一時的）
scoreboard objectives add team-sel-rd-res dummy
#readycheck判定用
scoreboard objectives add readycheck trigger
#職業データ別勝利回数
scoreboard objectives add ship-any-win dummy
scoreboard objectives add ship-01-win dummy
scoreboard objectives add ship-02-win dummy
scoreboard objectives add ship-03-win dummy
scoreboard objectives add ship-04-win dummy
scoreboard objectives add ship-05-win dummy
scoreboard objectives add ship-06-win dummy
scoreboard objectives add ship-07-win dummy
scoreboard objectives add ship-08-win dummy
scoreboard objectives add ship-09-win dummy
scoreboard objectives add ship-10-win dummy
scoreboard objectives add ship-11-win dummy
scoreboard objectives add ship-12-win dummy
scoreboard objectives add ship-13-win dummy
scoreboard objectives add ship-14-win dummy
scoreboard objectives add ship-15-win dummy
scoreboard objectives add ship-16-win dummy
scoreboard objectives add ship-17-win dummy
scoreboard objectives add ship-18-win dummy
scoreboard objectives add ship-19-win dummy
scoreboard objectives add ship-20-win dummy
scoreboard objectives add ship-21-win dummy
scoreboard objectives add ship-22-win dummy
scoreboard objectives add ship-23-win dummy
scoreboard objectives add ship-24-win dummy
scoreboard objectives add ship-25-win dummy
scoreboard objectives add ship-26-win dummy
scoreboard objectives add ship-27-win dummy
scoreboard objectives add ship-28-win dummy
scoreboard objectives add ship-29-win dummy
scoreboard objectives add ship-30-win dummy
#ステージセレクターvote
scoreboard objectives add stage-sel-vote trigger
#△Player Owned

#一応セット
scoreboard objectives setdisplay sidebar ship-num
scoreboard objectives setdisplay list ship-any-win

#▽Team Detector
team add Red {"text": "赤チーム"}
team add Blue {"text": "青チーム"}
team add Selection {"text": "選択中"}
team modify Red color red
team modify Red collisionRule pushOtherTeams
team modify Red nametagVisibility hideForOtherTeams
team modify Red deathMessageVisibility hideForOtherTeams
team modify Red friendlyFire false
team modify Red seeFriendlyInvisibles true
team modify Blue color blue
team modify Blue collisionRule pushOtherTeams
team modify Blue deathMessageVisibility hideForOtherTeams
team modify Blue friendlyFire false
team modify Blue nametagVisibility hideForOtherTeams
team modify Blue seeFriendlyInvisibles true
team modify Selection prefix {"text": "[チーム選択中]","color": "gold"}
#△Team Detector

#▽Dummy Player[Helper] Initialization
#Warning: DO NOT EDIT THE CODE DOWN HERE.
#tick-秒コンバータ初期化
scoreboard players set #Helper tick-sec_conv 0
scoreboard players set #Helper tick-max 20
#タイマー系は初期値を-1に
scoreboard players set #Helper timer_prebattle -1
scoreboard players set #Helper timer_battle -1
scoreboard players set #Helper timer_supply -1
#赤青ポイントはそれぞれ0、ファーストキル発生検知も当然だが0
scoreboard players set #Helper point-red 0
scoreboard players set #Helper point-blue 0
scoreboard players set #Helper killC-bothCorner 0
#キルディテクターは0<->1
scoreboard players set #Helper killDetect 0
#戦闘モードは-1(Before Starting),0(Before PrepareTime),1(PrepareTime),2(BattleTime),3(ResultTime)に別れている。-1が初期値
scoreboard players set #Helper CombatMode -1
#ステージデータのリセットも必ず
scoreboard players set #Helper stage-sel-result -1
scoreboard players set #Helper stage-sel-rand 0
#戦闘時間は600、変更後の処理も色々と書きたかった
scoreboard players set #Helper timer_battle-max 600
scoreboard players set #Helper timer_battle-hf 300
scoreboard players set #Helper timer_battle-qa 150
#Token Phase
scoreboard players set #Helper token-phase 0
scoreboard players set @a health-blue 0
scoreboard players set @a health-red 0
scoreboard players set @a TraceOn 0
#Token Flundings
scoreboard players set #Helper flundings_token 0
#△Dummy Player[Helper] Initialization

#リストア・イニシャライザ
function ship-based-pvp-datapacks:initialization/restore-init


