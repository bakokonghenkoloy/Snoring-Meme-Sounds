execute as @e[type=minecraft:villager,scores={snore_vcd=0},nbt=!{IsBaby:1b},tag=!is_snoring_v] at @s if data entity @s SleepingX run function snore:util/sound/adult
execute as @e[type=minecraft:villager,scores={snore_vcd=0},nbt=!{IsBaby:1b},tag=!is_snoring_v] at @s if data entity @s Brain.memories."minecraft:sleeping_pos" run function snore:util/sound/adult
