# 📋 Workshop-DIY Toolkit — Changelog

## v1.2 — 2026-03-10

### Layout
- 3-panel architecture: Help (left), Settings (right), Log (right docked)
- Log panel pushes content aside (no overlay), resizable via drag handle
- Settings temporarily closes log, restores on close
- Splash screen with animated logo (2.5s, tap to skip)

### Themes
- Added 9th theme: Retro (CRT scanlines, green phosphor) — Konami code unlock
- Animated smooth transitions between all themes
- Musical theme switcher: each theme plays unique 3-note melody

### Sound
- Web Audio API sound effects: click, success, error
- Musical melodies per theme
- Sound toggle in Settings, persisted

### Activity Log
- Typewriter mode: entries type character by character with blinking cursor
- Filter buttons: All / Info / ✓ / ✗ / TX / RX
- Export as .txt download
- Resizable drag handle (mouse + touch), width persisted
- Time-travel: Ctrl+Z undoes last entry
- Morse code: long-press any line, status dot blinks message

### Magic Features
- 🎤 Whisper mode: Web Speech API voice-to-log (EN/FR/AR)
- 👻 Ghost users: cross-tab cursor sync via localStorage
- 🫁 Breathing guide: deco bands pulse, with dhikr counter (سبحان الله)
- 🐱 Pixel pet: animated emoji, happy/sad/sleep states, click to pet
- 🌙 Night mode: auto-sunset detection (geolocation + solar calc)

### Islamic
- Bismillah heartbeat: glows on success, dims on error
- Hijri date in footer (Intl.DateTimeFormat, Umm al-Qura calendar)
- Dhikr counter with breathing guide

### Easter Eggs
- Konami code → Retro CRT theme
- Triple-click logo → Arabic matrix rain
- Long-press log line → Morse code blink

### Developer Tools
- Debug monitor: ?debug=1 → FPS + memory
- Shake to report: export JSON bug report on mobile
- App-to-app messaging: sendAppMessage / onAppMessage
- Version checker with UPDATE badge

### Platform
- PWA manifest + meta tags + Open Graph
- Keyboard accessibility: Escape, Tab focus trap, ARIA
- localStorage persistence for all preferences
- Footer: pixel pet + icon + "powered by" + Hijri date

---

## v1.1 — 2026-03-10

### Layout
- Settings sidebar (right, slide-out)
- Help panel (left) with 3 tabs: FAQ, How-To, Wiki
- 3 header buttons: ❓ ⚙️ 📜

### Themes
- 8 themes (6 dark + 2 Islamic light: Riad, Medina)
- Shared .light-theme class (no duplicated selectors)
- Theme + language persisted in localStorage

### Template
- Trilingual i18n: 🇬🇧 EN · 🇫🇷 FR · 🇩🇿 AR (RTL auto)
- Bismillah header, status pill, toast, activity log
- Footer with Workshop-DIY icon + powered by link

### Toolkit
- new_app.sh generator script
- HOWTO.md step-by-step guide
- prompt_template.md blank prompt
- NEW_APP_MESSAGE.md starter message

---

## v1.0 — 2026-03-10

- Initial template: HTML + CSS + JS boilerplate
- 6 dark themes
- Basic i18n, log, toast, status
- Workshop-DIY logo (inline SVG)
