scoreboard players add @a snore_cd 0
scoreboard players add @e[type=minecraft:villager] snore_vcd 0
execute as @a[nbt={SleepTimer:1}] run tag @s add is_snoring
execute as @a[tag=is_snoring,nbt={SleepTimer:0}] run tag @s remove is_snoring
scoreboard players remove @a[scores={snore_cd=1..}] snore_cd 1
scoreboard players remove @e[type=minecraft:villager,scores={snore_vcd=1..}] snore_vcd 1
execute if time 12542..23458 run function snore:villager_snore
execute if time 12542..23458 run function snore:player_snore
