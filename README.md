# 😪️😴️ Villager Snoring Meme Sound Effects 🫩️🥱️💤
> by Rabbi S. Arlan • **Alpha Development Stage**  
> **[Download on Modrinth](https://modrinth.com/datapack/villager-snoring-meme-sound-effects)**

> Reason why I **made this..?**  
> This Mod named **"[MT Snoring Sounds](https://modrinth.com/mod/snoringsound)"** stopped being updated and ported to newer versions *(1.21.8 through 26.1.2)*.  
> So I figured a Datapack + Resource Pack combo would technically work.
> But there's apparently a [mod](https://modrinth.com/mod/subtle-effects) that does this job!

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

## The 7 Sounds

| # | File | Description | Link |
|---|---|---|---|
| 1 | snore1.ogg | **AUGHHHH AUGHH** | [AUGGHH / AHHHHH sound effect](https://www.youtube.com/watch?v=gft2w1d6gZE) |
| 2 | snore2.ogg | Mimimimimimimimi | [Snore Mimimimimi Sound Effect](https://www.youtube.com/watch?v=dNr7nXvntO8) |
| 3 | snore3.ogg | Typical loud cartoon snoring meme sound lmao! | [Cartoon snoring meme sound](https://www.youtube.com/watch?v=BxXGI-XnJuU) |
| 4 | snore4.ogg | Mario: *"Spaghetti... Ravioli.."* | [Super Mario 64 Sleeping Sound](https://www.youtube.com/watch?v=5QHjDwBl_DU) |
| 5 | snore5.ogg | Let's not talk about this one 🥲🙏son☠️🥀️ | [Clingy Little Sister Snuck Into Your Bed](https://www.youtube.com/watch?v=aNIzC1RI5e0) |
| 6 | snore6.ogg | 4 AM in the morning neighbour doing Lawnmower | [AUUGHHH EXTENDED SOUND EFFECT](https://www.youtube.com/watch?v=iqrPmbBSb1Y) |
| 7 | snore7.ogg | You feel tired? Aight bet!🗣️🔥️😩️😫️ | [Plankton Aughhhhh](https://www.youtube.com/watch?v=_P5vR9pz5Hc) |
| 8 | snore8.ogg | Average sleeping sound | [Snoring - sound effect](https://www.youtube.com/watch?v=3eqcIC5Plzw) |
| 9 | | *(Coming soon in v1.7-alpha)* | |
| 10 | | *(Coming soon in v1.7-alpha as the last added sound)* | |

---

### Scoreboard Foundation
| Name | Used for |
|---|---|
| `snore_cd` | Player cooldown (552 ticks = 27.6s) |
| `snore_vcd` | Villager cooldown (552 ticks) |
| `snore_init` | Deferred announce flag (fires once on first player join) |

### Key foundation design decisions
- `scoreboard objectives remove` BEFORE `add` → safe on every `/reload`
- `nbt=!{IsBaby:1b}` instead of `nbt={IsBaby:0b}` → adult villagers don't always have IsBaby tag
- `SleepTimer:1` (int not short `1s`) → correct NBT type for player sleep detection
- `pack_format: 101.1` (decimal) → exact value required by Minecraft wiki for 26.x
- `min_format` + `max_format` alongside `supported_formats` → hybrid for both old (1.21.x) and new (26.x) pack engines
- Deferred announce via `snore_init` scoreboard → works for global instance-level datapacks where `#minecraft:load` fires before any player exists — only if you have [Global Packs Mod](https://modrinth.com/mod/globalpacks) installed as an optional dependency or do the manual method.


## Pack Format Compatibility and Indications

  ✅ -> Perfectly fine *(even with instabilities)*  
  ❔️ -> Perfectly fine without any mods or any tweaks*(i.e.: make it pure Vanilla)*  
  ❓️ -> Something's off according to me  
  ‼️ -> **Generally doesn't work** according to launcher, logs, crash texts and profilers  
  🥲️ -> Actually haven't tried

| Version | Datapack Format | Resource Pack Format | Status |
|---|---|---|---|
| 1.21 – 1.21.1 | 48 | 34 | ✅ |
| 1.21.2 – 1.21.3 | 57 | 42 | ✅ |
| 1.21.4 | 61 | 46 | ✅ |
| 1.21.5 | 71 | 55 | ✅ |
| 1.21.6 | 80 | 63 | ✅ |
| 1.21.7 – 1.21.8 | 81 | 64 | ✅ |
| 1.21.9 – 1.21.10 | 88.0 | 69.0 | ✅ |
| 1.21.11 | 94.1 | 75.0 | ✅ |
| 26.1 – 26.1.2 | 101.1 | 84.0 | ✅ |

Source: [Minecraft Wiki Pack Formats](https://minecraft.wiki/w/Pack_format)

---

## Install

**Resource Pack:** Drop ZIP into `[instance]/minecraft/resourcepacks/` → enable in Options → Resource Packs → drag to top of Selected list.

**Datapack (world-specific):** Drop ZIP into `saves/[world]/datapacks/` → `/reload`

**Datapack (global, PrismLauncher/PineconeMC etc.):**
- Drop ZIP into `[instance]/minecraft/datapacks/` → gold message fires when first player joins any world in that instance.  
- if you have **[Global Packs Mod](https://modrinth.com/mod/globalpacks)** installed as an optional dependency or you may do the manual method.

**Verify:** `/function snore:util/test`
- meme sound = RP active ✅
- sound = RP not loaded ❌

---

## Reporting Bugs

**Please open an Issue with:**
- Exact Minecraft version (e.g. 26.1.2, 1.21.11, 1.21, etc.)
- Launcher + Java version
- Whether you're using global or world-specific datapack
- Screenshot or paste of chat after `/reload`
- Output of `/function snore:util/test`
- Any JVM args you have (especially `-XX:+UseCompactObjectHeaders` — **remove this, it crashes Intel iGPUs**)
- Any other resource packs or datapacks installed
- And many more whatsoever

Make it very detailed — **when, where, what, why, how, and who** — so we can mercilessly annihilate the issue to the shadow realm with no remorse and no problem. Simple reports like *"It doesn't work when I sleep😫️ or when my slaves lie down in bed!!!👿️💢️😩️ May you pwease~~ fix it~~!!!👉️👈️🥺️ OwO"*, *"unsa man ning Minecraft Pack bro laina ani oi😫️😩️🙏️ gubot na kaayo ayo lang ug tarong bai🗣️📢️🔥️😩️‼️⚠️💯️🇵🇭️😫️🇵🇭️"* and **[insert alien language here that's from the other world named "Logs"]* still count, we'll figure it out all together. Every single report helps.

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
- CRITICAL FIX: Removed `execute if time` — this invalid command caused `snore:tick`  
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
#### CRITICAL
- `scoreboard objectives remove` before `add` → `/reload` no longer crashes load
- `nbt=!{IsBaby:1b}` replaces `nbt={IsBaby:0b}` → adults without IsBaby tag now detected
- `pack_format: 101.1` exact decimal (101 was wrong)
- Added `min_format`/`max_format` → 26.x new engine compatibility
- Deferred announce via `snore_init` scoreboard → global datapack gold message works
#### NEW
- OGGs moved to `custom/snoring/` (cleaner namespace)
- 5 variations per sound (was 3), full 0.75→1.25 range for pitch AND volume
- `custom.snoring.baby` sound event for baby villagers (+0.50 pitch)
- `play/` + `util/` function separation, zero code duplication
- `return 1` in all util functions
- Predicates for sleeping detection
- `/function snore:util/test` clickable in-game RP verification
- Supports both world-specific AND global instance-level datapack placement

### Alpha v1.6 — May 9, 2026
#### Folder Restructure *(OCD Fixed)*
- `play/villager/adult.mcfunction`   (was play/villager_adult)
- `play/villager/baby.mcfunction`    (was play/villager_baby)
- `util/sound/adult.mcfunction`      (was util/sound_adult)
- `util/sound/baby.mcfunction`       (was util/sound_baby)
- `util/sound/player.mcfunction`     (was util/sound_player)
- `util/test/snore1-5.mcfunction`    (NEW — individual tests)
- `predicates/sleeping/adult.json`   (was predicates/sleeping_adult)
- `predicates/sleeping/baby.json`
- `predicates/sleeping/player.json`
#### New features
- Stopsound when player wakes up — sounds STOP the moment you get out of bed
- `was_snoring` tag tracks sleep state for clean wake detection
- `/function snore:util/debug` — clickable debug panel showing your `snore_cd` score + checklist
- `/function snore:util/test/snore1` through snore5 — test each sound individually
- On-load warning: *"⚠ Make sure Simulation Distance ≥ 8 chunks!"*
- Filipino easter egg subtitle: *"Ah may natutulog! 💤"*

### Alpha v1.6_1 — May 13, 2026
#### Official Bug №1 — The random snore test bug
- **(THE ROOT CAUSE)**: `util/test/snore1-5` were all calling `minecraft:entity.villager.sleep` which hits the randomized snore.ogg sounds pool.
- NOW each `util/test/snoreN` calls its own dedicated `custom.snoring.test.snoreN` event which is a SINGLE-ENTRY in `sounds.json` pointing to EXACTLY that one OGG.
- Zero randomness. `/function snore:util/test/snore1` = **snore1.ogg**
#### What's New?
- Added `snore6.ogg` and `snore7.ogg` because yes.

### Alpha v1.6_2 — May 13, 2026
#### Official Bug №2 — The thingy or whatever
- Fixed to `if data entity @s SleepingX` — works on 1.21 through 26.1.2. No planning for overlays needed because it's overkill and more chaotic for my Severe ADHD-C brain to handle lmao. Because of `nbt={Sleeping:1b}` which I'm confused why and so happen to add it in the first place...
- `nbt={SleepTimer:1}` When server skips ticks when behind (confirmed 42 ticks behind in my logs). SleepTimer jumps 0→43, tick 1 never happened, `is_snoring` tag never added, player never snored. Fixed to `SleepTimer:1..` (any value ≥ 1).

#### What's New?
- New pack.png applied, baby pitch now +0.75 (was +0.50), Tagalog removed from en_us.json, separate tl_ph.json and ceb_ph.json .

### Alpha v1.6_3 — May 13, 2026
- Added a Rainbow announce message (★ S-n-o-r-e P-a-c-k ★ in red-gold-yellow-green-aqua-blue-purple), version string corrected, predicate dead code cleaned up.
- Forgot to say made the other Rainbow plain red to see if it looks good or not at all.

---

[MIT LICENSE](LICENSE)

*Made for the glory of God and the eternal suffering of every minecraft villager trying to sleep in peace... 😭🥹🙏*

Further Information is here in my [Mod](https://modrinth.com/datapack/snoring-meme-sound-effects)
