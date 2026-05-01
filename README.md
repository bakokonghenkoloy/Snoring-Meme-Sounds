# Villager Snoring Meme Sound Effects 💤
## *(ALPHA STAGE — bugs may exist, report them!)*
> by Rabbi S. Arlan

Adds **5 absolutely unhinged meme snoring sounds** to villagers AND players sleeping at night in Minecraft Java Edition.

![Snore Pack Icon](https://cdn.modrinth.com/data/cached_images/53b113259d73cb7d56b77db7b7ace4c7166ff19d_0.webp)

---

## The 5 Legendary Sounds 🔊

| File | Description |
|---|---|
| snore1.ogg | **AUGHHHH AUGHH** |
| snore2.ogg | *Mimimimimimimimi* |
| snore3.ogg | Loud meme snoring lmao |
| snore4.ogg | Mario sleeping *"Spaghetti.. Ravioli.."* |
| snore5.ogg | Let's not talk about the last one 🙂🙏 |

---

## How to Install (v1.2_2-alpha and above)

This is a **hybrid datapack + resource pack in one ZIP file!**

### Step 1 — Install the Datapack
1. Open your Minecraft world's folder
2. Go into the `datapacks/` folder
3. Drop the `.zip` file in there **(do NOT unzip it)**
4. Load your world and run `/reload` in chat
5. You should see a gold **[Snore Pack v1.2_2-alpha]** message — that means it's working ✅

### Step 2 — Enable the Resource Pack *(REQUIRED or you won't hear anything)*
6. Go to **Options → Music & Sound → Resource Packs** (or press Escape → Options → Resource Packs)
7. Find **"VillagerSnoring_RP"** in the **left (Available) column**
8. Click the **arrow** to move it to the **right (Selected) column**
9. Drag it to the **very TOP** of the Selected list
10. Click **Done**

> ⚠️ **Both steps are required.** The datapack triggers the snoring logic. The resource pack provides the actual audio files. Without the resource pack enabled you will hear nothing even if the datapack is loaded!

> ⚠️ If it says *"incompatible"* in the resource pack screen — ignore it and enable it anyway. It still works.

### Step 3 — Test it
- Find a village and wait for night (or use `/time set midnight`)
- Stand within **10 blocks** of a sleeping villager
- Make sure **Friendly Creatures** volume slider is at 100% in sound settings
- Wait up to **4 seconds** after they lie down

---

## Supported Versions
**Minecraft Java Edition 1.21 → 26.1.2 and beyond**

*(No mods needed. No dependencies. Just vanilla Java Edition.)*

---

## Open Source
[GitHub Repository](https://github.com/rabbiarlan/Villager-Meme-Sounds) • [MIT License](https://mit-license.org/)

> *Made for the glory of God and the suffering of every villager trying to sleep in peace... 😭🥹🙏*

---

## Devlog

### Alpha v1.0 — April 29, 2026
- 5 meme snore sounds added for villagers only
- Resource pack only, no datapack

### Alpha v1.1 — April 29, 2026
- Attempted to add player snoring support via datapack
- Had critical bugs (wrong file extension, wrong tag paths)

### Alpha v1.2 — April 30, 2026
- Fixed all datapack structure bugs (`pack.mcdata` → `pack.mcmeta`, `tags/functions/` → `tags/function/`)
- Fixed villager detection (now uses reliable `nbt={Sleeping:1b}`)
- Merged into hybrid single ZIP (datapack + embedded resource pack)
- 10-block hearing range with natural distance falloff
- Pitch + volume variation pool (15 entries, 0.75–1.25 range)
- Now uses the actual real meme OGG recordings

### Alpha v1.2_1 — April 30, 2026
- Fixed broken multi-line `execute` commands (backslash line continuation doesn't work in `.mcfunction`)
- Every command is now a single line

### Alpha v1.2_2 — May 1, 2026
- Fixed `SleepTimer:1s` (short type) → `SleepTimer:1` (int type) — player snoring was completely broken before this fix
- Added clearer install instructions for enabling the embedded resource pack manually

---

## License
[MIT](LICENSE)
