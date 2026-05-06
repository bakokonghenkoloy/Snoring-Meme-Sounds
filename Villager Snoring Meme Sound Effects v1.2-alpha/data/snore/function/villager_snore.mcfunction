# Play snore for sleeping villagers on cooldown=0
# Sleeping:1b NBT = villager is in a bed (reliable since 1.14+)
# volume 0.625 = 10 block range | pitch 1.0 = sounds.json handles variation
execute as @e[type=minecraft:villager,nbt={Sleeping:1b},scores={snore_vcd=0}] \
  at @s \
  run playsound minecraft:entity.villager.sleep neutral @a[distance=..10] ~ ~ ~ 0.625 1.0

# 80-tick cooldown = snore fires every ~4 seconds per villager
execute as @e[type=minecraft:villager,nbt={Sleeping:1b},scores={snore_vcd=0}] \
  run scoreboard players set @s snore_vcd 80
