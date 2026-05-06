execute as @a[tag=is_snoring,scores={snore_cd=0}] at @s run playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute as @a[tag=is_snoring,scores={snore_cd=0}] run scoreboard players set @s snore_cd 80
