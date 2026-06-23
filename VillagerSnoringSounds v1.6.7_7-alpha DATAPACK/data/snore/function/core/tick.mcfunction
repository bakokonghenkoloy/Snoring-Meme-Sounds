execute if score #snore snore_init matches 0 if entity @a run function snore:util/announce

scoreboard players add @a snore_cd 0
scoreboard players add @a snore_sleep 0
scoreboard players add @e[type=minecraft:villager,nbt=!{IsBaby:1b}] snore_vcd 0
scoreboard players add @e[type=minecraft:villager,nbt={IsBaby:1b}] snore_bcd 0

execute as @a store result score @s snore_sleep run data get entity @s SleepTimer
execute as @a[scores={snore_sleep=1..}] run tag @s add is_snoring
execute as @a[tag=is_snoring,scores={snore_sleep=0}] run function snore:util/wake_player

execute as @e[type=minecraft:villager,nbt=!{IsBaby:1b},tag=is_snoring_v] at @s unless data entity @s SleepingX unless data entity @s Brain.memories."minecraft:sleeping_pos" unless data entity @s sleeping_pos run function snore:util/wake_villager
execute as @e[type=minecraft:villager,nbt={IsBaby:1b},tag=is_snoring_b] at @s unless data entity @s SleepingX unless data entity @s Brain.memories."minecraft:sleeping_pos" unless data entity @s sleeping_pos run function snore:util/wake_baby

scoreboard players remove @a[scores={snore_cd=1..}] snore_cd 1
scoreboard players remove @e[type=minecraft:villager,nbt=!{IsBaby:1b},scores={snore_vcd=1..}] snore_vcd 1
scoreboard players remove @e[type=minecraft:villager,nbt={IsBaby:1b},scores={snore_bcd=1..}] snore_bcd 1

function snore:play/villager/adult
function snore:play/villager/baby
function snore:play/player
