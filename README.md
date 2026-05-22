# 😪️😴️ Villager Snoring Meme Sound Effects 🫩️🥱️💤
> by BakokongHenkoloy • **Developing this Mod in Alpha Development Stage**  
> **[Download on Modrinth](https://modrinth.com/datapack/villager-snoring-meme-sound-effects)**

> Reason why I **made this..?**  
> This Mod named **"[MT Snoring Sounds](https://modrinth.com/mod/snoringsound)"** stopped being updated and ported to newer versions *(1.21.8 through 26.1.2)*.  
> So I figured a Datapack + Resource Pack combo would technically work.
> But there's apparently a [mod](https://modrinth.com/mod/subtle-effects) that does this job!

---

# Adds 8 unhinged meme snoring sounds to villagers AND players — Java Edition 1.21 → 26.1.2

---

## ⚠️ Two Files Required
| File | Purpose |
|---|---|
| `RESOURCEPACK.zip` | Audio files (OGGs + sounds.json) |
| `DATAPACK.zip` | Detection logic + continuous snoring + player snoring |

Neither file works alone. Install both.

---

## The 8 Sounds

| # | File | Description | Link |
|---|---|---|---|
| 1 | snore1.ogg | **AUGHHHH AUGHH** | [AUGGHH / AHHHHH sound effect](https://www.youtube.com/watch?v=gft2w1d6gZE) |
| 2 | snore2.ogg | Mimimimimimimimi | [Snore Mimimimimi Sound Effect](https://www.youtube.com/watch?v=dNr7nXvntO8) |
| 3 | snore3.ogg | Typical loud cartoon snoring meme sound lmao! | [Cartoon snoring meme sound](https://www.youtube.com/watch?v=BxXGI-XnJuU) |
| 4 | snore4.ogg | Mario: *"Spaghetti... Ravioli.."* | [Super Mario 64 Sleeping Sound](https://www.youtube.com/watch?v=5QHjDwBl_DU) |
| 5 | snore5.ogg | Let's not talk about this one 🥲🙏son☠️🥀️ | [Clingy Little Sister Snuck Into Your Bed](https://www.youtube.com/watch?v=aNIzC1RI5e0) |
| 6 | snore6.ogg | 4 AM in the morning neighbour using Lawnmower | [AUUGHHH EXTENDED SOUND EFFECT](https://www.youtube.com/watch?v=iqrPmbBSb1Y) |
| 7 | snore7.ogg | You feel tired? Aight bet!🗣️🔥️😩️😫️ | [Plankton Aughhhhh](https://www.youtube.com/watch?v=_P5vR9pz5Hc) |
| 8 | snore8.ogg | Average snoring sound | [Snoring - sound effect](https://www.youtube.com/watch?v=3eqcIC5Plzw) |
| 9 | | *(Coming soon in v1.7-alpha)* | |
| 10 | | *(Coming soon in v1.7-alpha as the last added sound)* | |

---

### Scoreboard Foundation
| Name | Used for |
|---|---|
| `snore_cd` | Player cooldown |
| `snore_vcd` | Villager cooldown |
| `snore_init` | Deferred announce flag (fires once on first player join) |

### Key foundation design decisions
- `scoreboard objectives remove` BEFORE `add` → safe on every `/reload`
- `nbt=!{IsBaby:1b}` instead of `nbt={IsBaby:0b}` → adult villagers don't always have IsBaby tag
- `SleepTimer:1` (int not short `1s`) → correct NBT type for player sleep detection
- `min_format` + `max_format` alongside `supported_formats` → hybrid for both old (1.21.x) and new (26.x) pack engines
- Deferred announce via `snore_init` scoreboard → works for global instance-level datapacks where `#minecraft:load` fires before any player exists — only if you have [Global Packs Mod](https://modrinth.com/mod/globalpacks) installed as an optional dependency or do the manual method installation.


## Pack Format Compatibility & Indications

> ✅ -> Fully Compatible  
> ❔️ -> Okay-ish  
>    -> Unknown (did not try in that version)  
> ❓️ -> Questionable  
> ‼️ -> Incompatible

| Version | DP Format | RP Format | Latest Ver | v1.6.7-alpha |
|---|---|---|---|---|
| 1.21 | 48 | 34 |  | ❔️ |
| 1.21.1 | 48 | 34 |  | ❔️ |
| 1.21.2 | 57 | 42 |  | ❔️ |
| 1.21.3 | 57 | 42 |  | ❔️ |
| 1.21.4 | 61 | 46 |  | ❔️ |
| 1.21.5 | 71 | 55 |  | ❓️ |
| 1.21.6 | 80 | 63 |  | ❓️ |
| 1.21.7 | 81 | 64 |  | ❓️ |
| 1.21.8 | 81 | 64 |  | ❓️ |
| 1.21.9 | 88.0 | 69.0 |  | ❓️ |
| 1.21.10 | 88.0 | 69.0 |  | ❓️ |
| 1.21.11 | 94.1 | 75.0 | | ❓️ |
| 26.1 | 101.1 | 84.0 |  | ❓️ |
| 26.1.1 | 101.1 | 84.0 |  | ❓️ |
| 26.1.2 | 101.1 | 84.0 |  | ❓️ |

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
- no sound = RP not loaded ❌

---

## ⚠️ Reporting Bugs because it still exist in the Alpha Development Stage
### 🗣️📢‼️ Report them all on GitHub
**Please open an Issue in this Repository or reply in my first Discussion with:**
- Exact Minecraft version (e.g. 26.1.2, 1.21.11, 1.21, etc.)
- Launcher + Java version
- Whether you're using global or world-specific datapack
- Screenshot or paste of chat after `/reload`
- Output of `/function snore:util/test`
- Any JVM args you have (especially `-XX:+UseCompactObjectHeaders` — **remove this, it crashes in some Intel iGPUs like mine**)
- Any other resource packs or datapacks installed
- And many more whatsoever

Make it very detailed — **when, where, what, why, how, and who** — so we can mercilessly annihilate the issue to the shadow realm with no remorse and no problem. Simple reports like *"It doesn't work when I sleep😫️ or when my slaves lie down in bed!!!👿️💢️😩️ May you pwease~~ fix it~~!!!👉️👈️🥺️ OwO"*, *"unsa man ning Minecraft Pack bro laina ani oi😫️😩️🙏️ gubot na kaayo ayo lang ug tarong bai🗣️📢️🔥️😩️‼️⚠️💯️🇵🇭️😫️🇵🇭️"* and **[insert alien language here that's from the other world named "Logs"]** still count, we'll figure it out all together. Every single report really helps!


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
- CRITICAL FIX: Changed supported_formats from object `{min_inclusive/max_inclusive}`  
  to array `[min, max]` format — fixes "missing min_format/max_format" error in 26.x
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
- Fixed to `if data entity @s SleepingX` — works on 1.21 through 26.1.2. No planning for overlays needed because it's overkill and more chaotic for my Severe ADHD-C brain to handle lmao. Because of `nbt={Sleeping:1b}` which might be the root and cause of all problems I think.
- `nbt={SleepTimer:1}` When server skips ticks when behind (confirmed 42 ticks behind in my logs). SleepTimer jumps 0→43, tick 1 never happened, `is_snoring` tag never added, player never snored. Fixed to `SleepTimer:1..` (any value ≥ 1).

#### What's New?
- New pack.png applied, baby pitch now +0.75 (was +0.50), Tagalog removed from en_us.json, separate tl_ph.json and ceb_ph.json .

### Alpha v1.6_3 — May 13, 2026
- Added a Rainbow announce message (★ S-n-o-r-e P-a-c-k ★ in red-gold-yellow-green-aqua-blue-purple), version string corrected, predicate dead code cleaned up.
- Forgot to say made the other Rainbow plain red to see if it looks good or not at all.

### Alpha v1.6_4 — May 14, 2026
#### Official Bug №3 - The red error warning
- `pack_format: 84` in the RP. In 1.21.1 (which expects format 34), the game saw `pack_format: 84`, and even with `supported_formats: [34, 9999]`, some 1.21.x engine versions don't fully respect the supported_formats override when pack_format is THAT far off. Now fixed to `pack_format: 34` (the actual minimum). `supported_formats: [34, 9999]` covers everything from 1.21 through 26.x and future versions. Same logic for DP: `pack_format: 48`.
#### What's New?
- Also confirmed the baby villager noises will go from 0.75 -> 1.25 volumes to 0.5 -> 1.0 volume range variations
- Came back to the original pack.png icon and returned the rainbow descriptions of packs.
- Added `snore8.ogg`
- Forgot to say added reverb and fade-out effect to all sounds that cut-off
- More asynchronized and naturally making noise

### Alpha v1.6_5 — May 14, 2026
- Minor bug fixes and descriptions rewriting

- And yup clearly no clue what i'm heading towards at in the future of this pack i've been working on because the Code is getting kinda messy but atleast it's all worth it and I'm trying my best to fix the wild ahh issues i've encountered..
  
- Here is a random post I made: [v1.6_5-alpha and yes.....](https://github.com/bakokonghenkoloy/Snoring-Meme-Sounds/releases/tag/Yup_yes_indeed)

### Alpha v1.6.6 — May 16, 2026
#### Official Bug № 3 - Incompatibilities and More
- "Broken or incompatible" red error in 1.21.11 and 26.x — KILLED.
- Root cause: `pack_format: 84` being higher than what 1.21.11 expects. Now `pack_format: 34` for RP and `pack_format: 48` for DP (the absolute lowest/safest).
- PLUS both supported_formats: `[34/48, 9999]` AND explicit `min_format/max_format` fields — that's double coverage hitting both the old array engine (1.21.x) and the new min/max engine (1.21.11+, 26.x). Soon that'll be justified no red error on ANY version.
- `snore4` missing from `/function list` — FIXED. The bash declare -A array approach failed silently before (sh vs bash). Rebuilt in Python. All 8 test functions confirmed.
#### Official Bug № 4 - Can't hear yourself momentos
- Player can't hear themselves — FIXED.
- The old code only played `neutral @a[distance=..10]`. When YOU are sleeping, Minecraft's sleeping animation moves your camera — the neutral channel plays at your position but doesn't guarantee self-hearing.
- Now: `master @s` plays directly INTO your ears at 100% volume guaranteed, THEN `neutral @a[distance=1..,limit=10]` broadcasts to nearby OTHER players. Both channels fire. You will hear yourself snore.

### Alpha v1.6.7 — May 19, 2026
#### What's New?
- Baby villagers NOW have their own completely separate scoreboard `snore_bcd` — totally independent from adult `snore_vcd`.
- Before, baby villagers were accidentally sharing the adult cooldown. Now: adult villager snores → sets `snore_vcd`.
- Baby villager snores → sets `snore_bcd`.
- Player snores → sets `snore_cd`.
- Three fully separate async timers, no crossover ever.
- Added `is_snoring_v` and `is_snoring_b` entity tags so the wake detection correctly identifies which entity type woke up and calls the right `wake_villager` or `wake_baby` function — completely separate from `wake_player`.
- Fixed the oddly off rainbow gradient in the packs' description AND announce message.

### Alpha v1.6.7_1 — May 20, 2026
#### Official Bug №5 — Player can't hear themselves snoring.
- Did channel switch. Changed from `master @s` to `voice @s`.
- The voice channel is specifically designed for player-emitted sounds and is guaranteed audible to the player themselves regardless of sleeping camera position.
- Master can get blocked by the bed animation camera transition. `voice @s` = you WILL hear yourself.
- Wake detection overly complex — now simplified.
- Removed the broken unsupported `nbt=!{SleepingX:-2147483648}` fallback which was an unnecessary leftover.
- Clean and neat unless `data entity @s SleepingX` is sufficient for all versions 1.21→26.x.

### Alpha v1.6.7_2 — May 21, 2026
#### Official Bug Number №6 — THE BROKEN RAINBOW ROOT CAUSE IS NOW KILLED.
- `§F` and `§A` and `§E` etc. are NOT valid Minecraft hex color format characters after I realized what in the world just happened in my pack's description i've noticed since v1.6.7-alpha. Minecraft's `§x` hex system only recognizes LOWERCASE `§a-§f`. Every uppercase letter in the color codes was silently ignored, which is why I saw a wild ahh broken incomplete rainbow that I didn't bother to fix because I was lazy at that time...
- TELLRAW rainbow also rebuilt using `"color":"#ff0000"` hex color components in JSON — this is the cleanest method that can't break after what I prayed for lmao.
- Converted all files to MONO OGGs — THE REAL REASON I HEARD WILD AHH SOUNDS 20+ BLOCKS AWAY, especially that snore5.ogg sound😏️ Stereo .ogg files bypass Minecraft's 3D positional audio entirely — they play at 100% volume everywhere regardless of distance. Now my new Audacity-converted mono files are updated for the Resource Pack. Now distance falloff actually works: 100% volume at 1 block, fades naturally up to 10 blocks, silent at 11+ blocks just exactly what I've promised🥲️🙏️

### Alpha v1.6.7_3 — May 22, 2026
- Still continuing to fix Rainbow — Sometimes the Birdflop website is not giving me any supported formats... The root cause was `§f` (lowercase) being intercepted by Minecraft as "white color" BEFORE the `§x` processor could use it. Uppercase §F has no standalone meaning so the full 6-digit hex color processes correctly. v1.6.7_3 now uses exact birdflop output translated properly.
- I think now we can properly see full "Snoring Sleeping Sounds!" rainbow properly now.
- Reconfirmed Villagers in 1.21.5+ `if data entity @s SleepingX` and Player self-hearing `voice @s`

---

[MIT LICENSE](LICENSE)

*Made for the glory of God and the eternal suffering of every minecraft villager trying to sleep in peace... 😭🥹🙏*

Further Information is here in my [Mod](https://modrinth.com/datapack/snoring-meme-sound-effects)
