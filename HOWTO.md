# 📖 HOWTO — Create a New Workshop-DIY App

---

## Step 1: Generate Your App

```bash
cd tools/
./new_app.sh my-awesome-app
```

This creates `tools/my-awesome-app/` with all template files, app name set everywhere, and README + CHANGES ready.

---

## Step 2: Write Your System Prompt

Use `prompt_template.md` as a starting point. Define:
- What the app teaches
- UI elements and interactions
- Cultural and safety rules
- i18n content for all 3 languages

See `prompt_mqtt_example.html` for a complete reference.

---

## Step 3: Set Your App Identity

Already done by `new_app.sh`, but verify:
- `<title>` in `index.html`
- `LANG.en.title` / `LANG.fr.title` / `LANG.ar.title` in `script.js`
- `manifest.json` name and short_name

---

## Step 4: Build Your Sections

Replace the placeholder sections in `index.html`:

```html
<!-- Main card (always visible) -->
<div class="card" id="mainCard">
  <div class="card-header">
    <div>
      <div class="card-title"><span class="icon">🧩</span> <span data-i18n="myTitle">Title</span></div>
      <div class="card-subtitle"><span data-i18n="myDesc">Description</span></div>
    </div>
  </div>
  <!-- Your content here -->
</div>

<!-- Collapsible sections (add as many as needed) -->
<details class="collapsible">
  <summary><span class="icon">📡</span> <span data-i18n="mySection">Section Name</span></summary>
  <div class="card">
    <!-- Your content -->
  </div>
</details>
```

---

## Step 5: Add i18n Strings

Add keys to the `LANG` object in `script.js` for all 3 languages:

```javascript
// In LANG.en:
myTitle: 'My Title', myDesc: 'My description',

// In LANG.fr:
myTitle: 'Mon Titre', myDesc: 'Ma description',

// In LANG.ar:
myTitle: 'عنواني', myDesc: 'وصفي',
```

Reference in HTML: `<span data-i18n="myTitle">Fallback text</span>`

---

## Step 6: Add App Logic

Use the built-in utilities:

```javascript
// Logging (typewriter effect, sound, pet reactions)
log('Connected!', 'success');    // green + sound + happy pet
log('Failed', 'error');          // red + sound + sad pet
log('TX: hello', 'tx');          // blue
log('RX: world', 'rx');          // cyan

// Toast
showToast('Connecting...', 3000);  // auto-hide after 3s

// Status
setStatus(true);   // green
setStatus(false);  // red

// Cross-tab messaging
sendAppMessage('sensor-data', { temp: 22 });
onAppMessage(msg => log(`Got: ${msg.type}`, 'rx'));
```

---

## Step 7: Customize Settings Panel (Optional)

Add controls to the settings panel in `index.html` inside the `settingsPanel` aside:

```html
<div class="sidebar-group">
  <label class="sidebar-label" data-i18n="mySetting">My Setting</label>
  <select id="mySelect" class="sidebar-select">
    <option value="a">Option A</option>
  </select>
</div>
```

---

## Step 8: Update Help Content

Edit the FAQ, How-To, and Wiki tabs in the `helpPanel` aside in `index.html`:
- Add your own FAQ items
- Update How-To steps for your app
- Add Wiki entries for your domain

---

## Step 9: Test

- [ ] All 3 languages (check RTL for Arabic)
- [ ] All 9 themes (including Retro via Konami code)
- [ ] Light themes (Riad, Medina) — check contrast
- [ ] 3 panels: Help (left), Settings (right), Log (right docked)
- [ ] Log: filter, export, resize, Ctrl+Z undo
- [ ] Sound effects + musical theme melodies
- [ ] Splash screen (loads, skippable)
- [ ] Pixel pet (happy/sad/sleep states)
- [ ] Whisper mode (if mic available)
- [ ] Breathing guide + dhikr counter
- [ ] Hijri date in footer
- [ ] Mobile responsive
- [ ] Easter eggs: Konami, matrix rain, morse code
- [ ] Debug mode: `?debug=1`
- [ ] Cross-tab ghost cursors (open 2 tabs)
- [ ] Night mode (test after 9pm or mock)

---

## Step 10: Version & Package

Bump version in:
- `APP_VERSION` in `script.js`
- Version badges in `index.html`

Package:
```bash
zip -r my-awesome-app-v1.0.zip my-awesome-app/
```

---

## 📄 License

Workshop-DIY — [abourdim](https://github.com/abourdim)
