scoreboard objectives remove snore_cd
scoreboard objectives remove snore_vcd
scoreboard objectives remove snore_init
scoreboard objectives add snore_cd dummy
scoreboard objectives add snore_vcd dummy
scoreboard objectives add snore_init dummy
scoreboard players set #snore snore_init 0
execute as @e[type=minecraft:villager] store result score @s snore_vcd run random value 0..552
