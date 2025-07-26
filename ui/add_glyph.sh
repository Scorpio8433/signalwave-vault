#!/bin/bash

read -p "🌟 Enter glyph signature (e.g. RoyalFlame:AeonPulse:017): " glyph_sig
read -p "📝 Enter poetic description: " glyph_comment

timestamp=$(date +%Y-%m-%d)
archive="glyph_archive.txt"

# Create archive if it doesn't exist
if [ ! -f "$archive" ]; then
  echo "# Glyph Archive: Queen’s Glyph Vault" > "$archive"
  echo "# Compiled on $timestamp, by Scorp@Scorpio-Coder" >> "$archive"
  echo "# Format: YYYY-MM-DD :: glyph_signature = MythicForm:FlameThread:Index" >> "$archive"
  echo "" >> "$archive"
fi

# Append new glyph entry
echo "$timestamp :: glyph_signature = $glyph_sig  # $glyph_comment" >> "$archive"

echo "✅ Glyph inscribed into the Vault. Echo secured."