execute as @e[type=minecraft:villager,scores={snore_bcd=0},nbt={IsBaby:1b}] at @s if data entity @s SleepingX run function snore:util/sound/baby
