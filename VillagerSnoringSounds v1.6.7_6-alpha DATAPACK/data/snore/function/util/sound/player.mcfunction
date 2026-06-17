playsound custom.snoring.player neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_cd run random value 60..120
tag @s add is_snoring
return 1
