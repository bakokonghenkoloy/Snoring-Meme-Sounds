playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_cd run random value 135..552
tag @s add was_snoring
return 1
