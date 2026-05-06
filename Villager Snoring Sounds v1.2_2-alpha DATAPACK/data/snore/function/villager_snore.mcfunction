execute as @e[type=minecraft:villager,nbt={Sleeping:1b},scores={snore_vcd=0}] at @s run playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute as @e[type=minecraft:villager,nbt={Sleeping:1b},scores={snore_vcd=0}] run scoreboard players set @s snore_vcd 80
