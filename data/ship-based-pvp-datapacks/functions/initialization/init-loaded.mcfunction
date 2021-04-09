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
#戦闘モード(0か1、有効時は1)
scoreboard objectives add CombatMode dummy
#△Dummy Player[Helper]

#▽Player Owned
#職業データ(0～)
scoreboard objectives add ship-num dummy {"text":"職業の番号","color":"gold","bold":true,"italic":false}
#HP表示(観戦)
scoreboard objectives add health-spectate health
#HP表示(赤チーム)
scoreboard objectives add health-red health
#HP表示(青チーム)
scoreboard objectives add health-blue health
#殺害回数(一時データ/0～1)
scoreboard objectives add killcount-Temp deathCount
#FP(他RPGで言うところのMPに相当する要素/0～)
scoreboard objectives add FocusPoint dummy
#リスポーンクールタイム(5 sec/-1～5:-1はリスポーンクールタイム不必要(Living))
scoreboard objectives add respawn-time dummy
#スキル1CT(0～)
scoreboard objectives add skill1-ct dummy
#スキル2CT(0～)
scoreboard objectives add skill2-ct dummy
#スキル3CT(0～)
scoreboard objectives add skill3-ct dummy
#STゲージ（※満腹度）
scoreboard objectives add stamina food
#盾受け
scoreboard objectives add shield-guard minecraft.custom:damage_blocked_by_shield
#攻撃観測
scoreboard objectives add attack-det minecraft.custom:damage_dealt
#△Player Owned

#一応セット
scoreboard objectives setdisplay sidebar ship-num

#▽Team Detector
team add Red {"text": "赤チーム"}
team add Blue {"text": "青チーム"}
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
#△Dummy Player[Helper] Initialization

#リストア・イニシャライザ
function ship-based-pvp-datapacks:initialization/restore-init
