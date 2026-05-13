playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
scoreboard players set @s snore_cd 552
tag @s add was_snoring
return 1
