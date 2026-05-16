execute as @e[type=minecraft:villager,scores={snore_vcd=0},nbt={IsBaby:1b}] at @s if data entity @s SleepingX run function snore:util/sound/baby
