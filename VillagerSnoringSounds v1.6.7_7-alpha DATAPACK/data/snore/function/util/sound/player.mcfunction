execute store result score @s snore_pick run random value 1..8
execute if score @s snore_pick matches 1 at @s run playsound custom.snoring.test.snore1 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 1 run scoreboard players set @s snore_cd 202
execute if score @s snore_pick matches 2 at @s run playsound custom.snoring.test.snore2 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 2 run scoreboard players set @s snore_cd 146
execute if score @s snore_pick matches 3 at @s run playsound custom.snoring.test.snore3 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 3 run scoreboard players set @s snore_cd 101
execute if score @s snore_pick matches 4 at @s run playsound custom.snoring.test.snore4 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 4 run scoreboard players set @s snore_cd 234
execute if score @s snore_pick matches 5 at @s run playsound custom.snoring.test.snore5 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 5 run scoreboard players set @s snore_cd 514
execute if score @s snore_pick matches 6 at @s run playsound custom.snoring.test.snore6 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 6 run scoreboard players set @s snore_cd 281
execute if score @s snore_pick matches 7 at @s run playsound custom.snoring.test.snore7 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 7 run scoreboard players set @s snore_cd 104
execute if score @s snore_pick matches 8 at @s run playsound custom.snoring.test.snore8 neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute if score @s snore_pick matches 8 run scoreboard players set @s snore_cd 126
tag @s add is_snoring
return 1
