# Villager Snoring Meme Sound Effects 💤
> by Rabbi S. Arlan • Alpha Stage

Adds **5 unhinged meme snoring sounds** to villagers AND players when they sleep at night in Minecraft Java Edition.

> ⚠️ **This is a Minecraft Java Edition Datapack + Resource Pack. It does NOT work on Bedrock Edition. No mods or mod loaders required.**

![Pack Icon](https://cdn.modrinth.com/data/cached_images/53b113259d73cb7d56b77db7b7ace4c7166ff19d_0.webp)

---

## The 5 Sounds 🔊

| # | Sound | Description |
|---|---|---|
| 1 | snore1.ogg | **AUGHHHH AUGHH** |
| 2 | snore2.ogg | Mimimimimimimimi |
| 3 | snore3.ogg | Loud meme snoring lmao |
| 4 | snore4.ogg | Mario sleeping *"Spaghetti.. Ravioli.."* |
| 5 | snore5.ogg | Let's not talk about the last one 🙂🙏 |

---

## Download

This pack comes as **two separate ZIP files**. You need **both** for the full experience:

| File | What it does |
|---|---|
| `..._RESOURCEPACK.zip` | Provides the actual snore audio files |
| `..._DATAPACK.zip` | Makes villagers snore repeatedly + adds player snoring |

> ⚠️ **The Resource Pack alone gives villagers one snore when lying down. The Datapack adds continuous snoring every 4 seconds and also makes YOUR character snore. Both together = full experience.**

---

## How to Install

### Step 1 — Resource Pack
1. Download `..._RESOURCEPACK.zip`
2. **Do NOT unzip it**
3. Move it to: `.minecraft/resourcepacks/`
   - Windows: `%appdata%\.minecraft\resourcepacks\`
   - Linux: `~/.minecraft/resourcepacks/`
4. In Minecraft: **Options → Resource Packs**
5. Find it in the **left column** → click the **arrow →** to move it to the right
6. Drag it to the **very top** of the right column
7. Click **Done**

### Step 2 — Datapack *(optional but recommended)*
1. Download `..._DATAPACK.zip`
2. **Do NOT unzip it**
3. Move it into your specific world's folder: `saves/[your world name]/datapacks/`
4. Open that world and type `/reload` in chat
5. You should see this gold message: **[Snore Pack v1.2_2-alpha] Loaded!**

### Step 3 — Test
- Find a village, wait for night (or `/time set midnight`)
- Stand within **10 blocks** of a sleeping villager
- Make sure **Friendly Creatures** volume is at 100% in sound settings
- Wait up to 4 seconds after villagers lie down

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

## Open Source
[GitHub Repository](https://github.com/rabbiarlan/Villager-Meme-Sounds) • [MIT License](https://mit-license.org/)

> *Made for the glory of God and the suffering of every villager trying to sleep in peace... 😭🥹🙏*

---

## Devlog

### Alpha v1.0 — April 29, 2026
- 5 meme snore sounds for villagers (resource pack only)

### Alpha v1.1 — April 29, 2026
- First datapack attempt for player snoring (had critical bugs)

### Alpha v1.2 — April 30, 2026
- Fixed all datapack structure bugs
- Hybrid single ZIP approach (datapack + embedded resource pack)
- 10-block hearing range, pitch/volume variation pool (15 entries, 0.75–1.25)

### Alpha v1.2_1 — April 30, 2026
- Fixed broken multi-line execute commands in `.mcfunction` (backslash continuations don't work)

### Alpha v1.2_2 — May 1, 2026
- Fixed `SleepTimer:1s` → `SleepTimer:1` (wrong NBT type was breaking player snoring completely)
- Separated into two ZIP files (resource pack + datapack) — more reliable than embedded approach
- Improved install instructions

---

[MIT License](LICENSE)
