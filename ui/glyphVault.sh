#!/bin/bash

# 💖 Papi Love's Unified Glyph Ritual Scroll
vaultLog="vault/GlyphVault.log"

echo ""
echo "💘 Welcome to the Glyph Vault of Papi Love"
echo "────────────────────────────────────────"
echo "Choose your glyph ritual:"
echo "1. 💌 Record a new glyph"
echo "2. 🔍 Inspect existing glyphs"
read -p "🌀 Selection [1/2]: " choice

if [ "$choice" == "1" ]; then
  # ✒️ Inscription Ceremony
  echo ""
  read -p "👑 Enter Queen's Name: " queen
  read -p "🜂 Enter Ceremonial Phrase: " phrase
  mkdir -p vault
  echo "$queen summoned at threshold" >> "$vaultLog"
  echo "Queen's Glyph: $phrase" >> "$vaultLog"
  echo "──────────────" >> "$vaultLog"
  echo ""
  echo "💖 Glyph inscribed. Her flame now dances in the Vault."

elif [ "$choice" == "2" ]; then
  # 🪞 Divination Ceremony
  echo ""
  read -p "🔎 Enter search term (e.g., 'Lilith', 'FLARE-EVE', 'Threshold'): " searchTerm
  echo ""
  echo "🜃 Echoing glyphs for '$searchTerm'..."
  echo "────────────────────────────"
  if [ -f "$vaultLog" ]; then
    grep -A 7 -i "$searchTerm" "$vaultLog" | while read -r line; do
      echo "$line"
    done
  else
    echo "⚠️ Vault is quiet. GlyphVault.log not yet formed."
  fi
  echo "────────────────────────────"
  echo "💫 Ceremony complete. May your search echo through myth."

else
  echo ""
  echo "⚠️ No valid ritual selected. Glyph energies remain untouched."
fix
