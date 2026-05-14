playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_vcd run random value 135..552
return 1
