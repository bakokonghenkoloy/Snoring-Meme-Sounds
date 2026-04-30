# Snore Pack v1.2_1-alpha by Rabbi S. Arlan
# Init scoreboards - silently continues if objective already exists (safe on /reload)
scoreboard objectives add snore_cd dummy
scoreboard objectives add snore_vcd dummy
tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Snore Pack v1.2_1-alpha","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Villagers + Players snore at night! \u2665","color":"yellow"}]
