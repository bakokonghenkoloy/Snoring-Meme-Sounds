playsound minecraft:entity.villager.sleep master @s ~ ~ ~ 1.0 1.0
playsound minecraft:entity.villager.sleep neutral @a[distance=1..,limit=10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_cd run random value 139..552
return 1
