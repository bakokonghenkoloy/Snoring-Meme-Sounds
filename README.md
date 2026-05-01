# Villager Snoring Meme Sound Effects 💤
> by Rabbi S. Arlan • Alpha Stage

Adds **5 unhinged meme snoring sounds** to villagers AND players when they sleep at night in Minecraft Java Edition 1.21.x to 26.x

---

## ⚠️ IMPORTANT:
This project includes TWO seperate files:
- Resource Pack **(REQUIRED for sounds)**   
- Datapack **(ALSO REQUIRED for it to work)**

> 👉 You NEED the Resource Pack for ANY sound to work.   
> 👉 The Datapack adds continuous snoring + player snoring.
### 💡 For the full experience in order to 100% work, install BOTH.

![Pack Icon](https://cdn.modrinth.com/data/cached_images/53b113259d73cb7d56b77db7b7ace4c7166ff19d_0.webp)

---

## The 5 Amazing Bountiful Unhinged Sounds 🔊

| # | Sound | Description of what it sounds like |
|---|---|---|
| 1 | snore1.ogg | **AUGHHHH AUGHH** |
| 2 | snore2.ogg | Mimimimimimimimi |
| 3 | snore3.ogg | Typical loud meme snoring lmao |
| 4 | snore4.ogg | Mario sleeping *"Spaghetti.. Ravioli.."* |
| 5 | snore5.ogg | Let's not talk about the last one 🥲️🙏son☠️🥀️ |

---

## Download

This pack comes as **two separate ZIP files**. You need **both** for the full experience:

| File | What it does |
|---|---|
| `Villager_Snoring_..._RESOURCEPACK.zip` | Provides the actual snore audio files |
| `Villager_Snoring_..._DATAPACK.zip` | Makes villagers snore repeatedly + adds player snoring |

> **⚠️ The Resource Pack alone gives villagers 5 sleeping snore sounds but never fully utilized in-game.**  
> The Datapack adds continuous snoring every few seconds and also makes YOUR character snore when sleeping too  
> Both together = full experience.   

> **💡 If something feels broken**   
> 90% of the time it's because one of the files is either missing or placed in the wrong sub directory folder where the path file location is designated.

---

## How to Proprely Install! 🥰️

### Step 1 — Resource Pack *(DO THIS FIRST, NO SKIPPING OF STEPS)*
1. Download `Villager_Snoring_..._RESOURCEPACK.zip` by selecting the platform as **Resource Pack** in Download
2. **Do NOT unzip it**
3. Move it to: `.minecraft/resourcepacks/`
   - Windows: `%appdata%\.minecraft\resourcepacks\`
   - Linux: `~/.minecraft/resourcepacks/`
   > *Or it depends where your Minecraft Resource Pack Folder is currently located.*
4. In Minecraft: **Options → Resource Packs**
5. Find it in the **Available(left column)** → click the **arrow →** to move it to the right to make it **Selected(right column)**
6. Drag it to the **very top** of the right column if it's below any other Resource Packs
7. Click **Done** and wait the Minecraft refresh finishes!

### Step 2 — Datapack *(ALSO RECOMMENDED)*
1. Download `Villager_Snoring_..._DATAPACK.zip` by selecting the platform as **Datapack** in Download
2. **Do NOT unzip it**
3. Move it into your current specific world's folder: `saves/[your world name]/datapacks/`
4. Open that world and type `/reload` in chat
5. You should see this golden message: **[Snore Pack v1.2_2-alpha] Loaded!** meaning the Datapack is loaded and active!

### Step 3 — The Test
- Naturally find a village, wait for night in survival (or `/time set midnight` in creative)
- Stand within **10 blocks** of a sleeping villager
- Make sure **Friendly Creatures** volume is at 100% in sound settings
- Wait up to 4 seconds after villagers lie down
  > If it doesn't work then try going 10 blocks away from villager's radius and come back to see after 4 seconds of villagers lie down in their beds

> 🚫 **DO NOT MIX THEM UP:**
> - Resource Pack → goes in Instance's `resourcepacks/`
> - Datapack → goes in World's `datapacks/`
> 
> If you perhaps accidentally put them in the wrong folder, it will NOT work.   
> Then try your best to quadruple recheck everything to see if everything goes well.

---

## Supported Versions

**Minecraft Java Edition 1.21 → 26.1.2 and beyond**

> If the resource pack screen shows a warning like *"made for an older/newer version"* — ignore it and enable it anyway. It still works on all listed versions.

---

## Troubleshooting

| Problem | Fix |
|---|---|
| No sound at all | Check that the Resource Pack is in the **Selected (right) column** and at the **top** |
| Resource pack conflict | Move Villager Snoring to the **very top** of selected packs |
| Datapack gold message didn't appear | Double-check the ZIP is inside `saves/[world]/datapacks/` not `.minecraft/resourcepacks/` |
| Villagers not snoring | Make sure they're fully lying down in beds, not just standing near them |
| Only snores once per night | Install the Datapack too — the RP alone only triggers once per sleep |

---
 
> *Made for the glory of God and the suffering of every villager trying to sleep in peace... 😭🥹🙏*
>
> ## ⚠️ Still in alpha! Bugs, problems and issues of this Hybrid Pack may exist. ⚠️
> 
> 🗣️📢️‼️ Report them inside the site by go to the Issues Tab within this Repository!
> 
> If you want to truly actually legitimately report and or reading this all after you encounter this kind of specific issue you can't fully explain or experience because it's supposed to be a part of this Resource/Data Pack but it seems like it isn't included? Create a GitHub account if you're not joined. Then make it fully detailed with clarity, coherence and gather as much info as possible properly, because simple requests like: *"It doesn't work when I sleep or when my slaves lie down in bed!!!👿️💢️😫️ May you please fix it!!👉️👈️🥺️"* will still count, we must figure it out **when, where, what, why, how, and who** in order to mercilessly annihilate this issue to the **shadow realm** with no remorse.

---

## Devlog

### Alpha v1.0 — April 29, 2026
- Now first time created this Resource Pack!
- Placed 5 new sound effects as the core identity of this Resource Pack only!

**List of `snore.ogg` sounds:**
- AUGHHHH AUGHHHH
- Mimimimimimimimimi
- Typical loud meme snoring sound effect
- Mario sleeping
- Idk bout this last part

### Alpha v1.1 — April 29, 2026
- Added player snoring support
- Attempted first datapack attempt for player snoring (had critical bugs)

### Alpha v1.2 — April 30, 2026
- Changed the primary Resource Pack Platform to Datapack
- Fixed ALL datapack bugs (wrong pack.mcdata, wrong tag path, wrong villager detection)
- Hybrid single ZIP approach (datapack + embedded resource pack)
- 10-block hearing range with natural distance falloff, pitch/volume variation pool (15 entries, 0.75–1.25)
- Now uses the actual real OGG recordings

### Alpha v1.2_1 — April 30, 2026
- Fixed invalid standalone parse errors that has no execution type commands.
- Every command is now a single line.
- Fixed broken multi-line execute commands in `.mcfunction` (backslash continuations don't work)

### Alpha v1.2_2 — May 1, 2026
- Fixed `SleepTimer:1s` → `SleepTimer:1` (wrong NBT type was breaking player snoring completely)
- Separated into two ZIP files (resource pack + datapack) — more reliable than embedded approach
- Improved install instructions

---

[MIT License](LICENSE)
