playsound custom.snoring.baby neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_bcd run random value 60..120
tag @s add is_snoring_b
return 1
