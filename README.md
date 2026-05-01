# 😪️😴️ Villager Snoring Meme Sound Effects 🫩️🥱️💤
> by Rabbi S. Arlan • **Alpha Development Stage**

Adds **5 unhinged meme snoring sounds** to villagers AND players when they sleep at night in Minecraft Java Edition 1.21.x to 26.x

---

## ⚠️ IMPORTANT:
This project includes TWO separate files:
- Resource Pack **(REQUIRED for sounds)**
- Datapack **(ALSO REQUIRED for it to work)**

> 👉 You NEED the Resource Pack for ANY sound to work.  
> 👉 The Datapack adds continuous snoring + player snoring.
### 💡 For the full experience install BOTH.

![Pack Icon](https://cdn.modrinth.com/data/cached_images/53b113259d73cb7d56b77db7b7ace4c7166ff19d_0.webp)

---

## The 5 Amazing Bountiful Unhinged Sounds 🔊

| # | Sound | Description of what it sounds like |
|---|---|---|
| 1 | snore1.ogg | **AUGHHHH AUGHH** |
| 2 | snore2.ogg | Mimimimimimimimi |
| 3 | snore3.ogg | Typical loud meme snoring lmao |
| 4 | snore4.ogg | Mario sleeping *"Spaghetti.. Ravioli.."* |
| 5 | snore5.ogg | Let's not talk about the last one 🥲🙏son☠️🥀 |

---

## Download

This pack comes as **two separate ZIP files**. You need **both** for the full experience:

| File | What it does |
|---|---|
| `Villager_Snoring_..._RESOURCEPACK.zip` | Provides the actual snore audio files |
| `Villager_Snoring_..._DATAPACK.zip` | Makes villagers snore repeatedly + adds player snoring |

> **⚠️ The Resource Pack alone gives villagers a snore sound only once when they lie down.**
> The Datapack adds continuous snoring every 4 seconds and also makes YOUR character snore when sleeping.
> Both together = full experience.

> **💡 If something feels broken**
> 90% of the time it's because one of the files is either missing or placed in the wrong folder.

---

## How to Properly Install! 🥰️

### Step 1 — Resource Pack *(DO THIS FIRST)*
1. Download `Villager_Snoring_..._RESOURCEPACK.zip` — select **Resource Pack** platform in Downloads
2. **Do NOT unzip it**
3. Move it to: `.minecraft/resourcepacks/`
   - Windows: `%appdata%\.minecraft\resourcepacks\`
   - Linux: `~/.minecraft/resourcepacks/`
   > *Or wherever your launcher's resourcepacks folder is located*
4. In Minecraft: **Options → Resource Packs**
5. Find it in the **Available (left column)** → click the **arrow →** to move it to **Selected (right column)**
6. Drag it to the **very top** of the right column if other resource packs are below it
7. Click **Done** and wait for Minecraft to refresh

### Step 2 — Datapack *(ALSO REQUIRED)*
1. Download `Villager_Snoring_..._DATAPACK.zip` — select **Data Pack** platform in Downloads
2. **Do NOT unzip it**
3. Move it into your world's folder: `saves/[your world name]/datapacks/`
4. Open that world and type `/reload` in chat
5. You should see this gold message: **[Snore Pack v1.2_3-alpha] Loaded!** ← confirms it's active

### Step 3 — The Test
- Find a village, wait for night (or `/time set midnight` in creative)
- Stand within **10 blocks** of a sleeping villager
- Make sure **Friendly Creatures** volume is at 100% in sound settings
- Wait up to 4 seconds after villagers lie down

> 🚫 **DO NOT MIX THEM UP:**
> - Resource Pack → goes in Instance's `resourcepacks/`
> - Datapack → goes in World's `datapacks/`
>
> Putting them in the wrong folder = nothing works.

---

## Supported Versions

**Minecraft Java Edition 1.21 → 26.1.2 and beyond**

> If the resource pack screen shows a warning like *"made for an older/newer version"* — ignore it and enable it anyway. It still works on all listed versions.

---


## Troubleshooting and Debugging

| Problem | Fix |
|---|---|
| No snoring sound at all even for Villagers | Quadruple-check that the Resource Pack is in the **Selected (right) column** and at the **very top** *(if you have Resource Packs that tells you to set it top first they're lying to you)* than in the **Available (left) column.** Then make sure they're fully lying down in beds, not just standing near them or you did not install the Datapack and Resource Pack properly |
| Resource pack conflict | Move Villager Snoring to the **very top** of selected packs |
| Golden message didn't appear on chat after `/reload` | Quadruple-check the `Villager_Snoring_..._DATAPACK.zip` is inside `saves/[world you're currently playing with the datapack]/datapacks/` not `resourcepacks/` |

---

> *Made for the glory of God and the suffering of every villager trying to sleep in peace... 😭🥹🙏*
>
> ## ⚠️ Still in *Alpha Development Stage!* Bugs may exist. ⚠️
>
> 🗣️📢‼️ Report them in the *Issues* Tab on the Repository!
>
> Make it very detailed — **when, where, what, why, how, and who** — so we can mercilessly annihilate the issue to the shadow realm with no remorse and no problem. Simple reports like *"It doesn't work when I sleep😫️ or when my slaves lie down in bed!!!👿️💢️😩️ May you pwease~~ fix it~~!!!👉️👈️🥺️ OwO"* and *"unsa man ning Minecraft Pack bro laina ani oi😫️😩️🙏️ gubot na kaayo ayo lang ug tarong bai🗣️📢️🔥️😩️‼️⚠️💯️🇵🇭️😫️🇵🇭️"* still count, we'll figure it out together.

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

---

[MIT License](LICENSE)
