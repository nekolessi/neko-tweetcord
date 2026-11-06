<div align="center">

<img alt="LOGO" src="images/md/avatar.png" width="220" />

# 🐾 neko-tweetcord 🐾
### *“i don't know how this works, but if you don't touch it, it sends tweets”*

[![Python](https://img.shields.io/badge/Python-3.10%2B-ffb7c5?style=flat-square&logo=python&logoColor=white)](https://python.org)
[![Discord.py](https://img.shields.io/badge/discord.py-2.0%2B-d8b4e2?style=flat-square&logo=discord&logoColor=white)](https://github.com/Rapptz/discord.py)
[![tweety-ns](https://img.shields.io/badge/powered%20by-tweety--ns-a0c4ff?style=flat-square)](https://github.com/mahrtayyab/tweety)
[![Braincells](https://img.shields.io/badge/braincells-1%2F2-ffadad?style=flat-square)](#)
[![Status](https://img.shields.io/badge/status-barely%20holding%20together-ffd6a5?style=flat-square)](#)

<p align="center">
  A Discord notification bot for X (Twitter) using <code>tweety-ns</code>.<br>
  Forked because I wanted my own custom setup and paying for the official Twitter API is not in my budget.
</p>

[✨ features](#-what-it-does) • [📦 setup](#-setup-for-fellow-girlfailures) • [⚙️ config](#️-env-configuration) • [💬 commands](#-slash-commands) • [🪦 troubleshooting](#-help-it-died) • [💖 credits](#-credits--upstream)

</div>

---

## ฅ^•ﻌ•^ฅ what is this?

Welcome to my personal fork of **Tweetcord / neko-tweetcord**! 

The official X / Twitter API costs an arm and a leg, so this bot stealthily grabs updates using **`tweety-ns`** and throws them straight into Discord before I forget they exist.

If you are looking for enterprise-grade, flawlessly orchestrated code... you are in the wrong place. But if you want tweets dumped into your Discord server with minimal tears, welcome home nya.

---

## ✨ what it does

- 📬 **Real-time X alerts:** Stalks monitors specified accounts and sends new tweets straight to your Discord channel.
- 💸 **Zero API fees:** Uses `tweety-ns` (session auth cookies) so we don't have to give Elon our lunch money.
- 🖼️ **Media & Embeds:** Forwards images, videos, and threads (with FixupX / vxtwitter proxy magic when embeds break).
- 🪄 **Slash Commands:** Add, list, or delete tracked accounts right inside Discord without having to open the scary black terminal window again.
- 🌐 **Multi-account support:** Support for multiple Twitter accounts to spread out rate limits!

---

## 📦 setup (for fellow girlfailures)

Don't panic! Grab a coffee and follow these steps slowly:

### 1. Clone this dumpster fire
```bash
git clone https://github.com/nekolessi/neko-tweetcord.git
cd neko-tweetcord
```

### 2. Make a virtual environment
```bash
# windows powershell
python -m venv .venv
.\.venv\Scripts\activate

# linux / mac
python3 -m venv .venv
source .venv/bin/activate
```

### 3. Install requirements
```bash
pip install -r requirements.txt
```
*(If pip gives red text, try running it again while whispering sweet nothings to your PC).*

---

## ⚙️ `.env` configuration

Copy `.env.example` to `.env`:

```env
# 🤖 Discord Bot Token (from Discord Developer Portal — don't leak this or i will cry)
BOT_TOKEN=your_discord_bot_token_here

# 🍪 Your Twitter/X auth_token cookie: "AccountAlias:AuthTokenHex"
# (Log in on your burner browser -> F12 -> Storage/Application -> Cookies -> 'auth_token')
# Multiple accounts can be separated with commas: "Main:token1,Alt:token2"
TWITTER_TOKEN=MainAccount:your_twitter_auth_token_here

# 📂 Path where the bot stores tracked accounts & cache
DATA_PATH=./data
```

> [!WARNING]
> **Use an alt / burner Twitter account!**  
> Scraping with your main account's session cookie carries a risk of getting rate-limited or locked. Please don't risk your precious main account.

---

## 🚀 running the bot

### Windows (the easy way):
Just double-click **`start.bat`**! It activates the venv and launches the bot automatically!

### Or in the terminal:
```bash
python bot.py
```

If you see the bot log in and come online in Discord: **Congratulations! You did it! Go take a nap, you earned it.** 🎉

---

## 💬 slash commands

| Command | What it does |
| :--- | :--- |
| `/add notifier` | Start tracking a Twitter user in a channel (supports mentions & media filters) |
| `/remove notifier` | Stop notifications for an account in a channel |
| `/list users` | Show all Twitter users currently being tracked in the server |
| `/customize settings` | Tweak notification format, roles to ping, and embed options |
| `/customize translation` | Set translation language for foreign tweets |
| `/sync` | Sync Twitter accounts with the local database |

---

## 🪦 help, it died

| Symptom | Probable Cause | Fix |
| :--- | :--- | :--- |
| `ImportError: No module named...` | You forgot to activate the virtual environment or run pip | Run `pip install -r requirements.txt` again |
| `TweetyAuthError` / rate limit loop | Your Twitter `auth_token` expired or got logged out | Log back into X on your burner, grab a fresh cookie, update `.env` |
| Bot is online but not posting | Missing channel permissions | Give the bot `Send Messages`, `Embed Links`, and `Attach Files` permissions in Discord |
| Nothing works and everything is on fire! | Cosmic rays or user error | Close your laptop, pet a cat (me), and try again in 10 minutes |

---

## 💖 credits & upstream

- **Original Project:** Forked from [Yuuzi261/Tweetcord](https://github.com/Yuuzi261/Tweetcord) by [Yuuzi261](https://github.com/Yuuzi261) — thank you for creating the foundation!
- **Twitter Scraping:** Powered by [mahrtayyab/tweety](https://github.com/mahrtayyab/tweety) (`tweety-ns`).
- **Fork Maintainer:** [nekolessi](https://github.com/nekolessi) — just a clumsy catgirl trying her best.

---

<div align="center">
  <sub>made with ❤️, catnip, and caffeine</sub>
</div>
