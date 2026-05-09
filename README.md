# 😪️😴️ Villager Snoring Meme Sound Effects 🫩️🥱️💤
> by Rabbi S. Arlan • **Alpha Development Stage**
> Reason why I **made this..?** This Mod named **"[MT Snoring Sounds](https://modrinth.com/mod/snoringsound)"** stopped being updated and ported to newer versions *(1.21.8 through 26.1.2)*.
> So I figured a Datapack + Resource Pack combo would technically work.
> **[Download on Modrinth](https://modrinth.com/datapack/villager-snoring-meme-sound-effects)**

---

# Adds 5 unhinged meme snoring sounds to villagers AND players — Java Edition 1.21 → 26.1.2

---

## ⚠️ Two Files Required
| File | Purpose |
|---|---|
| `RESOURCEPACK.zip` | Audio files (OGGs + sounds.json) |
| `DATAPACK.zip` | Detection logic + continuous snoring + player snoring |

Neither file works alone. Install both.

---

## The 5 Sounds

| # | File | Description | Link |
|---|---|---|---|
| 1 | snore1.ogg | AUGHHHH AUGHH | [AUGGHH / AHHHHH sound effect](https://www.youtube.com/watch?v=gft2w1d6gZE) |
| 2 | snore2.ogg | Mimimimimimimimi | [Snore Mimimimimi Sound Effect](https://www.youtube.com/watch?v=dNr7nXvntO8) |
| 3 | snore3.ogg | Cartoon loud snoring | [Cartoon snoring meme sound](https://www.youtube.com/watch?v=BxXGI-XnJuU) |
| 4 | snore4.ogg | Mario "Spaghetti.. Ravioli.." | [Super Mario 64 Sleeping Sound](https://www.youtube.com/watch?v=5QHjDwBl_DU) |
| 5 | snore5.ogg | Let's not talk about this one 🥲🙏️son☠️🥀️ | [Clingy Little Sister Snuck Into Your Bed](https://www.youtube.com/watch?v=aNIzC1RI5e0) |

---

## Architecture (Technical)

### Resource Pack
```
assets/minecraft/
  sounds.json              → replaces entity.villager.sleep with 25-entry pool
                             defines custom.snoring.baby (baby villager event)
  lang/en_us.json          → subtitle "Villager snores 💤"
  sounds/custom/snoring/
    snore1.ogg → snore5.ogg
```

### Datapack
```
data/
  minecraft/tags/function/
    load.json    → ["snore:core/load"]
    tick.json    → ["snore:core/tick"]
  snore/
    function/
      core/
        load.mcfunction    → scoreboard init (remove→add prevents /reload crash)
                             sets snore_init=0 for deferred announce
        tick.mcfunction    → cooldown tick, is_snoring tag management,
                             dispatches to play/, deferred announce check
      play/
        villager_adult.mcfunction  → execute nbt=!{IsBaby:1b} adult detection
        villager_baby.mcfunction   → execute nbt={IsBaby:1b} baby detection
        player.mcfunction          → execute tag=is_snoring player detection
      util/
        sound_adult.mcfunction  → playsound neutral @a[distance=..10] + snore_vcd=552
        sound_baby.mcfunction   → playsound custom.snoring.baby + snore_vcd=552
        sound_player.mcfunction → playsound neutral @a[distance=..10] + snore_cd=552
        announce.mcfunction     → deferred gold tellraw (fires when first player joins)
        test.mcfunction         → RP verification tool via /function snore:util/test
    predicates/
      sleeping_adult.json   → entity_properties Sleeping:1b
      sleeping_baby.json    → entity_properties Sleeping:1b IsBaby:1b
      sleeping_player.json  → flags is_sleeping:true
```

### Scoreboards
| Name | Used for |
|---|---|
| `snore_cd` | Player cooldown (552 ticks = 27.6s) |
| `snore_vcd` | Villager cooldown (552 ticks) |
| `snore_init` | Deferred announce flag (fires once on first player join) |

### Key design decisions
- `scoreboard objectives remove` BEFORE `add` → safe on every `/reload`
- `nbt=!{IsBaby:1b}` instead of `nbt={IsBaby:0b}` → adult villagers don't always have IsBaby tag
- `SleepTimer:1` (int not short `1s`) → correct NBT type for player sleep detection
- `pack_format: 101.1` (decimal) → exact value required by Minecraft wiki for 26.x
- `min_format` + `max_format` alongside `supported_formats` → hybrid for both old (1.21.x) and new (26.x) pack engines
- Deferred announce via `snore_init` scoreboard → works for global instance-level datapacks where `#minecraft:load` fires before any player exists

### Pack Format Compatibility

| Version | DP Format | RP Format | Status |
|---|---|---|---|
| 1.21 – 1.21.1 | 48 | 34 | ✅ |
| 1.21.2 – 1.21.3 | 57 | 42 | ✅ |
| 1.21.4 | 61 | 46 | ✅ |
| 1.21.5 | 71 | 55 | ✅ |
| 1.21.6 | 80 | 63 | ✅ |
| 1.21.7 – 1.21.8 | 81 | 64 | ✅ |
| 1.21.9 – 1.21.10 | 88.0 | 69.0 | ✅ |
| 1.21.11 | 94.1 | 75 | ✅ |
| 26.1 – 26.1.2 | 101.1 | 84.0 | ❔️ |

Source: [minecraft.wiki/w/Pack_format](https://minecraft.wiki/w/Pack_format)

---

## Install

**Resource Pack:** Drop ZIP into `[instance]/minecraft/resourcepacks/` → enable in Options → Resource Packs → drag to top of Selected list.

**Datapack (world-specific):** Drop ZIP into `saves/[world]/datapacks/` → `/reload`

**Datapack (global, PrismLauncher/PineconeMC etc.):** Drop ZIP into `[instance]/minecraft/datapacks/` → gold message fires when first player joins any world in that instance.

**Verify:** `/function snore:util/test` — meme sound = RP active ✅, vanilla sound = RP not loaded ❌

---

## Reporting Bugs

**Please open an Issue with:**
- Exact Minecraft version (e.g. 26.1.2, 1.21.11, 1.21)
- Launcher + Java version
- Whether you're using global or world-specific datapack
- Screenshot or paste of chat after `/reload`
- Output of `/function snore:util/test`
- Any JVM args you have (especially `-XX:+UseCompactObjectHeaders` — **remove this, it crashes Intel iGPUs**)
- Any other resource packs or datapacks installed

Even short reports like *"It doesn't work when I sleep 😫"* and *"unsa man ning Minecraft Pack bro laina ani oi 😩🙏🇵🇭"* are welcome — we'll figure it out together. Every report helps.

---

## Devlog

### Alpha v1.0 — April 29, 2026
- First release! Resource Pack only.
- 5 meme snore sounds as the core identity:
  - AUGHHHH AUGHHHH
  - Mimimimimimimimimi
  - Typical loud meme snoring
  - Mario sleeping
  - Idk bout this last part

### Alpha v1.1 — April 29, 2026
- Added player snoring support
- First datapack attempt (had critical bugs)

### Alpha v1.2 — April 30, 2026
- Fixed ALL datapack bugs (`pack.mcdata` → `pack.mcmeta`, `tags/functions/` → `tags/function/`, wrong villager detection)
- Hybrid single ZIP approach (datapack + embedded resource pack)
- 10-block hearing range, pitch/volume variation pool (15 entries, 0.75–1.25)

### Alpha v1.2_1 — April 30, 2026
- Fixed broken multi-line `execute` commands — backslash line continuations don't work in `.mcfunction`
- Every command is now a single line

### Alpha v1.2_2 — May 1, 2026
- Fixed `SleepTimer:1s` → `SleepTimer:1` (wrong NBT type was silently breaking player snoring)
- Separated into two ZIP files (resource pack + datapack) — more reliable than embedded approach

### Alpha v1.2_3 — May 1, 2026
- Moved OGG files from `entity/villager/` → `custom/villager/` path inside the resource pack
- Eliminates potential path collision with vanilla villager sounds folder *(learned from dissecting [Grok Meme Villagers](https://modrinth.com/resourcepack/grox-meme-villagers) Resource Pack)*
- Fixed Modrinth upload: DATAPACK.zip now correctly contains actual datapack logic files instead of duplicate

### Alpha v1.2_4 — May 2, 2026
- Fixed cooldown: 80 ticks → 552 ticks so snore5 (25.6s) always fully plays before next sound fires
- Added "Villager snores 💤" closed caption subtitle — now shows in subtitles when sound plays
- Resource Pack menu description now shows rainbow colors + "- Resource Pack" label
- Datapack world selection now shows "- Datapack" label clearly

### Alpha v1.3 — May 2, 2026
- CRITICAL FIX: Removed `execute if time` — this invalid command caused snore:tick 
  to fail loading entirely in all previous versions (zero snoring ever happened from DP)
- CRITICAL FIX: Changed supported_formats from object {min_inclusive/max_inclusive} 
  to array [min, max] format — fixes "missing min_format/max_format" error in 26.x
- Both fixes together make the datapack actually load and function for the first time

### Alpha v1.4 — May 4, 2026

- `pack_format` is now the HIGHEST target version.  
- According to here about about **[Pack Formats](https://minecraft.wiki/w/Pack_format).**  
- Discovered using `-XX:+UseCompactObjectHeaders` in your JVM args makes it incompatible even when it's selected highest above the rest

| | RP pack_format | DP pack_format | RP supported_formats | DP supported_formats |
|---|---|---|---|---|
| v1.3-alpha | 46 (=1.21.4) | 84 (=26.1.2) | [22, 9999] | [34, 9999] |
| v1.4-alpha | 61 (=1.21.4) | 101 (=26.1.2) | [48, 9999] *(from 1.21.0)* | [48, 9999] *(from 1.21.0, oh wait it's supposed to be 34 whoops gotta change that later)* |* |


### Alpha v1.5 — May 9, 2026
- CRITICAL: `scoreboard objectives remove` before `add` → `/reload` no longer crashes load
- CRITICAL: `nbt=!{IsBaby:1b}` replaces `nbt={IsBaby:0b}` → adults without IsBaby tag now detected
- CRITICAL: `pack_format: 101.1` exact decimal (101 was wrong)
- CRITICAL: Added `min_format`/`max_format` → 26.x new engine compatibility
- CRITICAL: Deferred announce via `snore_init` scoreboard → global datapack gold message works

- NEW: OGGs moved to `custom/snoring/` (cleaner namespace)
- NEW: 5 variations per sound (was 3), full 0.75→1.25 range for pitch AND volume
- NEW: `custom.snoring.baby` sound event for baby villagers (+0.50 pitch)
- NEW: Modular `play/` + `util/` function separation, zero code duplication
- NEW: `return 1` in all util functions
- NEW: Predicates for sleeping detection
- NEW: `/function snore:util/test` clickable in-game RP verification
- NEW: Supports both world-specific AND global instance-level datapack placement

---

[MIT LICENSE](LICENSE)

*Made for the glory of God and the suffering of every villager trying to sleep in peace. 😭🥹🙏*
