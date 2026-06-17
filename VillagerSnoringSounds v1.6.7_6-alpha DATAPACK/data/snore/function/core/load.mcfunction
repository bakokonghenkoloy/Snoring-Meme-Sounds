scoreboard objectives remove snore_cd
scoreboard objectives remove snore_vcd
scoreboard objectives remove snore_bcd
scoreboard objectives remove snore_init
scoreboard objectives remove snore_sleep
scoreboard objectives add snore_cd dummy
scoreboard objectives add snore_vcd dummy
scoreboard objectives add snore_bcd dummy
scoreboard objectives add snore_init dummy
scoreboard objectives add snore_sleep dummy
scoreboard players set #snore snore_init 0
execute as @e[type=minecraft:villager,nbt=!{IsBaby:1b}] store result score @s snore_vcd run random value 0..20
execute as @e[type=minecraft:villager,nbt={IsBaby:1b}] store result score @s snore_bcd run random value 0..20
