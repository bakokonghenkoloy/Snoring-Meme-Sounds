scoreboard players set #snore snore_init 1
tellraw @a [{"text":"★ ","color":"white","bold":true},{"text":"Snoring Sleeping Sounds","color":"red","bold":false},{"text":" ★","color":"white","bold":true},{"text":" v1.6.7-alpha","color":"gray"}]
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Snore Pack","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" 8 meme snores — Adult Villagers, Baby Villagers AND Players all snore!","color":"yellow"}]
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Snore Pack","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Run ","color":"white"},{"text":"/function snore:util/test","color":"aqua","clickEvent":{"action":"run_command","value":"/function snore:util/test"}},{"text":" to test all 8 sounds!","color":"white"}]
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Snore Pack","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" ⚠ RP at TOP of list • Sim Distance ≥ 8 • Friendly Creatures > 0%","color":"yellow"}]
execute as @e[type=minecraft:villager,nbt=!{IsBaby:1b}] store result score @s snore_vcd run random value 0..552
execute as @e[type=minecraft:villager,nbt={IsBaby:1b}] store result score @s snore_bcd run random value 0..552
