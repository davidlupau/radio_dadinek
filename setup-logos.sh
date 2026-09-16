#!/bin/bash
# Run on VPS: sudo bash /var/www/radio-lupau/setup-logos.sh
# Creates SVG logos locally — no external downloads needed

LOGO_DIR="/var/www/radio-lupau/icons/logos"
mkdir -p "$LOGO_DIR"

echo "=== Writing SVG logos ==="

# France Info — blue square with "france info" text, matching brand style
cat > "$LOGO_DIR/france-info.svg" << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
  <rect width="200" height="200" fill="#003189"/>
  <text x="100" y="82" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="white" text-anchor="middle">france</text>
  <text x="100" y="118" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="#6ec6f5" text-anchor="middle">info</text>
  <rect x="30" y="128" width="140" height="3" fill="#6ec6f5" rx="2"/>
</svg>
SVG

# France Inter — green circle with "inter" style
cat > "$LOGO_DIR/france-inter.svg" << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
  <rect width="200" height="200" fill="#009A44"/>
  <text x="100" y="82" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="white" text-anchor="middle">france</text>
  <text x="100" y="118" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="#ccf0dc" text-anchor="middle">inter</text>
  <rect x="30" y="128" width="140" height="3" fill="#ccf0dc" rx="2"/>
</svg>
SVG

# France Culture — purple/aubergine brand colour
cat > "$LOGO_DIR/france-culture.svg" << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
  <rect width="200" height="200" fill="#6B1F7C"/>
  <text x="100" y="82" font-family="Arial,sans-serif" font-size="28" font-weight="bold" fill="white" text-anchor="middle">france</text>
  <text x="100" y="118" font-family="Arial,sans-serif" font-size="23" font-weight="bold" fill="#e0b8ea" text-anchor="middle">culture</text>
  <rect x="30" y="128" width="140" height="3" fill="#e0b8ea" rx="2"/>
</svg>
SVG

# RFI — dark blue with RFI initials, matches their brand
cat > "$LOGO_DIR/rfi.svg" << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
  <rect width="200" height="200" fill="#002F6C"/>
  <text x="100" y="125" font-family="Arial,sans-serif" font-size="72" font-weight="bold" fill="white" text-anchor="middle">RFI</text>
</svg>
SVG

# Sud Radio — red brand colour
cat > "$LOGO_DIR/sud-radio.svg" << 'SVG'
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 200">
  <rect width="200" height="200" fill="#C8102E"/>
  <text x="100" y="82" font-family="Arial,sans-serif" font-size="32" font-weight="bold" fill="white" text-anchor="middle">SUD</text>
  <text x="100" y="122" font-family="Arial,sans-serif" font-size="24" font-weight="bold" fill="#ffc4cc" text-anchor="middle">RADIO</text>
</svg>
SVG

echo "✓ All logos written"
chown -R www-data:www-data "$LOGO_DIR"
ls -lh "$LOGO_DIR"
