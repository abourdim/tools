# 🛠️ Workshop-DIY — Project Toolkit v1.2

**Everything you need to create a new Workshop-DIY web app.**

Clone it, run `./new_app.sh my-app`, and start building.

---

## 📁 Structure

```
tools/
├── README.md                  ← You are here
├── HOWTO.md                   ← Step-by-step guide (9 steps + checklist)
├── CHANGES.md                 ← Full changelog
├── new_app.sh                 ← Generator script (creates app from template)
├── NEW_APP_MESSAGE.md         ← Starter message for Claude conversations
├── web_app_template/          ← Boilerplate (copy this to start)
│   ├── index.html             ← 3-panel layout, splash, all UI
│   ├── script.js              ← 1200+ lines of vanilla magic
│   ├── style.css              ← 1100+ lines, 9 themes, fully responsive
│   ├── manifest.json          ← PWA manifest
│   └── README.md              ← Template-specific API docs
├── logos/                     ← Official brand assets
├── prompt_template.md         ← Blank system prompt template
└── prompt_mqtt_example.html   ← Example prompt (MQTT Kids Lab)
```

---

## 🚀 Quick Start

```bash
cd tools/
./new_app.sh mqtt-kids-lab     # creates tools/mqtt-kids-lab/
```

The script copies the template, sets the app name everywhere, creates README + CHANGES, and prints next steps.

---

## 🎨 Template Features

### Layout: 3-Panel Architecture

| Panel | Side | Trigger | Behavior |
|-------|------|---------|----------|
| ❓ Help | Left | Button | Overlay, tabs: FAQ / How-To / Wiki |
| ⚙️ Settings | Right | Button | Overlay, lang / theme / sound / whisper / breathing |
| 📜 Log | Right | Button | **Docked** (pushes content), resizable drag handle |

### Themes (9)

| Theme | Style | Mode | Melody |
|-------|-------|------|--------|
| Mosque Gold | Gold & blue | Dark | E4-G4-C5 |
| Zellige | Blue & purple | Dark | A4-C5-E5 |
| Andalus | Green & gold | Dark | D4-F#4-A4 |
| Space | Purple & cyan | Dark | C5-E5-G5 |
| Jungle | Lime & orange | Dark | C4-E4-G4 |
| Robot | Blue & orange | Dark | A4-C#5-E5 |
| **Riad** | Terracotta & ivory | **Light** | F4-A4-C5 |
| **Medina** | Teal & pearl | **Light** | D4-F4-A4 |
| **🕹️ Retro** | Green phosphor, CRT scanlines | **Dark** | C5-C4-C5 |

Retro theme is hidden — unlocked via Konami code (↑↑↓↓←→←→BA).

### Trilingual i18n

- 🇬🇧 English (LTR) · 🇫🇷 Français (LTR) · 🇩🇿 العربية (RTL auto)
- All UI text has keys in all 3 languages
- Persisted in localStorage

### UI Components

- **Splash screen** — animated logo, 2.5s auto-dismiss, tap to skip
- **Bismillah header** — reacts to app events (glows on success, dims on error)
- **Status pill** — connected / disconnected
- **Toast** — spinner + message, auto-hide option
- **Footer** — pixel pet + Workshop-DIY icon + "powered by" link + Hijri date

### Activity Log

- Timestamped, color-coded (info / success / error / tx / rx)
- **Typewriter mode** — entries type out character by character with blinking cursor
- **Filter buttons** — All / Info / ✓ / ✗ / TX / RX
- **Export** — download as `.txt`
- **Resizable** — drag left edge (mouse + touch), width persisted
- **Time-travel** — Ctrl+Z removes last entry
- **Morse code** — long-press any log line, status dot blinks the message in morse

### Sound Effects

- Web Audio API (no files needed)
- Click (800Hz), success (C-E two-tone), error (low buzz)
- **Musical themes** — each theme plays a unique 3-note melody on selection
- Toggle in Settings, persisted

### Magic Features

- **🎤 Whisper mode** — speak into mic, voice transcribed to log (Web Speech API, supports EN/FR/AR)
- **👻 Ghost users** — faint cursors from other tabs visible on screen (localStorage sync)
- **🫁 Breathing guide** — deco bands pulse like breathing, with dhikr counter (سبحان الله)
- **🐱 Pixel pet** — animated emoji in footer, happy on success, sad on error, sleeps after 60s idle
- **🌙 Night mode** — auto-detects sunset (geolocation + solar calc), suggests calm dark theme

### Easter Eggs

- **🕹️ Konami code** — ↑↑↓↓←→←→BA → retro CRT theme
- **🟩 Matrix rain** — triple-click logo → falling Arabic calligraphy
- **📡 Morse code** — long-press any log line → status dot blinks morse

### Developer Tools

- **🐛 Debug monitor** — `?debug=1` URL param → FPS + memory display
- **📱 Shake to report** — shake phone → auto-export JSON bug report (log, device info, viewport)
- **⏪ Time-travel** — Ctrl+Z in log panel undoes last entry
- **📨 App-to-app messaging** — `sendAppMessage(type, data)` / `onAppMessage(callback)` via storage events
- **🔄 Version checker** — compares `APP_VERSION` vs stored latest, shows UPDATE badge

### Accessibility

- Keyboard: Escape closes panels, Tab focus trap
- ARIA: `role=dialog`, `aria-modal`, `aria-label` on all panels
- Focus returns to trigger button on close

### PWA

- `manifest.json` with icons
- `<meta name="theme-color">`
- `apple-touch-icon`
- Open Graph meta tags

---

## 🖼️ Logos

| Type | Files |
|------|-------|
| Source vectors | `.svg`, `.ai`, `.dxf`, `.pdf` |
| Web images | `.png`, `.webp`, `.ico` |
| Social — LinkedIn | Banner, logo, profile, post |
| Social — Google | Cover, logo, profile, post |

Logo SVG inline in `script.js` with `fill: currentColor` (adapts to theme).
Footer icon: transparent PNG, base64-embedded, inverts on dark themes.

---

## 📝 Prompts

| File | Purpose |
|------|---------|
| `prompt_template.md` | Blank template for new modules |
| `prompt_mqtt_example.html` | Complete example (MQTT Kids Lab) |

---

## 📏 Conventions

- **Version** — `APP_VERSION` in script.js + badges in HTML
- **ZIP naming** — `appname-vX.Y.zip`
- **Files** — `index.html` + `script.js` + `style.css` + `manifest.json`
- **No frameworks** — vanilla HTML/CSS/JS only
- **Fonts** — Google Fonts: Amiri, Righteous, Tajawal, Bangers, Orbitron
- **Bismillah** — always present, discreet, top centered
- **Delivery** — include README.md, CHANGES.md, in-app help

---

## 📄 License

Workshop-DIY — [abourdim](https://github.com/abourdim)
