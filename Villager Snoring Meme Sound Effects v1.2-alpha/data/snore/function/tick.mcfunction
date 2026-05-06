# Safe score init for new players/villagers (no crash if entity is new)
scoreboard players add @a snore_cd 0
scoreboard players add @e[type=minecraft:villager] snore_vcd 0

# Player sleep tag management
# SleepTimer > 0 means player is in a bed sleeping
execute as @a[nbt={SleepTimer:1s}] run tag @s add is_snoring
execute as @a[tag=is_snoring,nbt={SleepTimer:0s}] run tag @s remove is_snoring

# Cooldown countdown
scoreboard players remove @a[scores={snore_cd=1..}] snore_cd 1
scoreboard players remove @e[type=minecraft:villager,scores={snore_vcd=1..}] snore_vcd 1

# Night gate: 12542 = ~7pm, 23458 = ~5am game time
execute if time 12542..23458 run function snore:villager_snore
execute if time 12542..23458 run function snore:player_snore
