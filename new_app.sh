#!/bin/bash
# ═══════════════════════════════════════════════════════════════════
# Workshop-DIY — New App Generator
# Usage: ./new_app.sh <app-name>
# Example: ./new_app.sh mqtt-kids-lab
# ═══════════════════════════════════════════════════════════════════

set -e

# ── Check argument ──
if [ -z "$1" ]; then
  echo ""
  echo "  🛠️  Workshop-DIY — New App Generator"
  echo ""
  echo "  Usage:  ./new_app.sh <app-name>"
  echo "  Example: ./new_app.sh mqtt-kids-lab"
  echo ""
  exit 1
fi

APP_NAME="$1"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEMPLATE_DIR="$SCRIPT_DIR/web_app_template"
APP_DIR="$SCRIPT_DIR/$APP_NAME"

# ── Check template exists ──
if [ ! -d "$TEMPLATE_DIR" ]; then
  echo "❌ Template not found at $TEMPLATE_DIR"
  exit 1
fi

# ── Check app doesn't already exist ──
if [ -d "$APP_DIR" ]; then
  echo "❌ Directory already exists: $APP_DIR"
  echo "   Remove it first or pick a different name."
  exit 1
fi

echo ""
echo "  🛠️  Workshop-DIY — New App Generator"
echo "  ─────────────────────────────────────"
echo "  App name:  $APP_NAME"
echo "  Output:    $APP_DIR"
echo ""

# ── Copy template ──
cp -r "$TEMPLATE_DIR" "$APP_DIR"
echo "  ✅ Template copied"

# ── Replace placeholders in index.html ──
sed -i "s/my-project/$APP_NAME/g" "$APP_DIR/index.html"
sed -i "s/A Workshop-DIY educational web app/A Workshop-DIY app — $APP_NAME/g" "$APP_DIR/index.html"
echo "  ✅ index.html — app name set"

# ── Replace placeholders in script.js (EN title only, keep FR/AR for manual) ──
sed -i "s/title: 'my-project'/title: '$APP_NAME'/g" "$APP_DIR/script.js"
sed -i "s/title: 'mon-projet'/title: '$APP_NAME'/g" "$APP_DIR/script.js"
sed -i "s/title: 'مشروعي'/title: '$APP_NAME'/g" "$APP_DIR/script.js"
echo "  ✅ script.js — i18n titles set"

# ── Replace in manifest.json ──
sed -i "s/my-project/$APP_NAME/g" "$APP_DIR/manifest.json"
echo "  ✅ manifest.json — app name set"

# ── Create README.md ──
cat > "$APP_DIR/README.md" << EOF
# $APP_NAME — Workshop DIY

**Description:** _TODO: describe your app here_

## Quick Start

Open \`index.html\` in a browser.

## Features

- 8 themes (6 dark + 2 Islamic light)
- Trilingual: 🇬🇧 EN · 🇫🇷 FR · 🇩🇿 AR (RTL)
- Settings sidebar
- Activity log
- PWA-ready

## Files

| File | Description |
|------|-------------|
| \`index.html\` | Main app |
| \`script.js\` | App logic + i18n |
| \`style.css\` | Themes + responsive |
| \`manifest.json\` | PWA manifest |

## Version

v1.0

## License

Workshop-DIY — [abourdim](https://github.com/abourdim)
EOF
echo "  ✅ README.md — created"

# ── Create CHANGES.md ──
cat > "$APP_DIR/CHANGES.md" << EOF
# $APP_NAME — Changelog

## v1.0 — $(date +%Y-%m-%d)

- Initial app from Workshop-DIY template
- 8 themes, trilingual i18n, sidebar, log, toast, status
- _TODO: add your changes here_
EOF
echo "  ✅ CHANGES.md — created"

# ── Summary ──
echo ""
echo "  ─────────────────────────────────────"
echo "  🚀 App ready: $APP_DIR"
echo ""
echo "  Next steps:"
echo "    1. cd $APP_DIR"
echo "    2. Edit index.html — add your sections"
echo "    3. Edit script.js — add i18n keys & logic"
echo "    4. Open index.html in browser to test"
echo "    5. zip -r ${APP_NAME}-v1.0.zip $(basename "$APP_DIR")/"
echo ""
