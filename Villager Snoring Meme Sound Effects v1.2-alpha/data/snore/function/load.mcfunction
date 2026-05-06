# ============================================================
# Snore Pack v1.2-alpha — by Rabbi S. Arlan
# Hybrid Datapack + Embedded Resource Pack
# Works: Minecraft 1.21 through 26.1.2 and beyond
# ============================================================

scoreboard objectives add snore_cd dummy
scoreboard objectives add snore_vcd dummy

tellraw @a [{"text":"[","color":"dark_gray"},{"text":"Snore Pack v1.2-alpha","color":"gold","bold":true},{"text":"]","color":"dark_gray"},{"text":" Loaded! Villagers + Players will snore at night \u2665","color":"yellow"}]
