execute store result score @s snore_pick run random value 1..8
execute if score @s snore_pick matches 1 at @s run playsound custom.snoring.test.snore1 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 1 run scoreboard players set @s snore_bcd 116
execute if score @s snore_pick matches 2 at @s run playsound custom.snoring.test.snore2 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 2 run scoreboard players set @s snore_bcd 84
execute if score @s snore_pick matches 3 at @s run playsound custom.snoring.test.snore3 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 3 run scoreboard players set @s snore_bcd 59
execute if score @s snore_pick matches 4 at @s run playsound custom.snoring.test.snore4 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 4 run scoreboard players set @s snore_bcd 135
execute if score @s snore_pick matches 5 at @s run playsound custom.snoring.test.snore5 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 5 run scoreboard players set @s snore_bcd 295
execute if score @s snore_pick matches 6 at @s run playsound custom.snoring.test.snore6 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 6 run scoreboard players set @s snore_bcd 161
execute if score @s snore_pick matches 7 at @s run playsound custom.snoring.test.snore7 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 7 run scoreboard players set @s snore_bcd 60
execute if score @s snore_pick matches 8 at @s run playsound custom.snoring.test.snore8 neutral @a[distance=..10] ~ ~ ~ 0.625 1.75
execute if score @s snore_pick matches 8 run scoreboard players set @s snore_bcd 73
tag @s add is_snoring_b
return 1
