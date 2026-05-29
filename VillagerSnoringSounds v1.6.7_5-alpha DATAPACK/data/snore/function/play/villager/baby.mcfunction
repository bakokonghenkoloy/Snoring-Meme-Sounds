execute as @e[type=minecraft:villager,scores={snore_bcd=0},nbt={IsBaby:1b},tag=!is_snoring_b] at @s if data entity @s SleepingX run function snore:util/sound/baby
execute as @e[type=minecraft:villager,scores={snore_bcd=0},nbt={IsBaby:1b},tag=!is_snoring_b] at @s if data entity @s Brain.memories."minecraft:sleeping_pos" run function snore:util/sound/baby
