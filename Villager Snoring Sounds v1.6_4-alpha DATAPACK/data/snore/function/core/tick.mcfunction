execute if score #snore snore_init matches 0 if entity @a run function snore:util/announce

scoreboard players add @a snore_cd 0
scoreboard players add @e[type=minecraft:villager] snore_vcd 0

execute as @a[nbt={SleepTimer:1..}] run tag @s add is_snoring
execute as @a[tag=is_snoring,nbt={SleepTimer:0}] run function snore:util/wake_player

scoreboard players remove @a[scores={snore_cd=1..}] snore_cd 1
scoreboard players remove @e[type=minecraft:villager,scores={snore_vcd=1..}] snore_vcd 1

function snore:play/villager/adult
function snore:play/villager/baby
function snore:play/player
