# Play snore for sleeping players on cooldown=0
# is_snoring tag = set in tick.mcfunction via SleepTimer NBT check
execute as @a[tag=is_snoring,scores={snore_cd=0}] \
  at @s \
  run playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0

# 80-tick cooldown
execute as @a[tag=is_snoring,scores={snore_cd=0}] \
  run scoreboard players set @s snore_cd 80
