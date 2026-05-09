tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Snore Pack Test","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Playing test snore on YOU right now...","color":"yellow"}]
playsound minecraft:entity.villager.sleep neutral @s ~ ~ ~ 1.0 1.0
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Snore Pack","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Heard a MEME snore? ","color":"white"},{"text":"\u2714 Resource Pack is active!","color":"green"}]
tellraw @s [{"text":"[","color":"dark_gray"},{"text":"Snore Pack","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Heard the vanilla villager sleep? ","color":"white"},{"text":"\u2717 Resource Pack is NOT loaded!","color":"red"}]
return 1
