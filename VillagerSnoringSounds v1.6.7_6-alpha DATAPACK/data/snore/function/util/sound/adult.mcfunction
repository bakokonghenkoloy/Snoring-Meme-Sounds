playsound custom.snoring.adult neutral @a[distance=..10] ~ ~ ~ 0.625 1.0
execute store result score @s snore_vcd run random value 60..120
tag @s add is_snoring_v
return 1
