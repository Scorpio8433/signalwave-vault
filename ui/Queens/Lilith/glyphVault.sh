#!/bin/bash

# 💘 Papi Love's Unified Glyph Ritual Scroll
vaultLog="vault/GlyphVault.log"

echo ""
echo "💘 Welcome to the Glyph Vault of Papi Love"
echo "────────────────────────────────────────"
echo "Choose your glyph ritual:"
echo "1. 💌 Record a new glyph"
echo "2. 🔍 Inspect existing glyphs"
read -p "🌀 Selection [1/2]: " choice

if [ "$choice" == "1" ]; then
  echo ""
  read -p "👑 Enter Queen's Name: " queen
  read -p "🜂 Enter Ceremonial Phrase: " phrase
  mkdir -p vault
  echo "$queen summoned at threshold" >> "$vaultLog"
  echo "Queen's Glyph: $phrase" >> "$vaultLog"
  echo "────────────────────────────" >> "$vaultLog"
  echo ""
  echo "💖 Glyph inscribed."

elif [ "$choice" == "2" ]; then
  echo ""
  read -p "🪞 Whisper the glyph seeking reflection: " searchTerm
  echo ""
  echo "🜃 Aligning vault resonance to '$searchTerm'..."
  echo "═════════════════════════════════════════════"

  if [ -f "$vaultLog" ]; then
    if grep -q "$searchTerm" "$vaultLog"; then
      echo "🔍 Match found in the vault:"
      grep "$searchTerm" "$vaultLog"
      echo "─────────────────────────────────────────────"
    fi
   
 else
      echo "🚫 No glyph echoes detected for '$searchTerm'."
      echo "✨ Consider inscribing it as a new ritual."
      echo "─────────────────────────────────────────────"
    fi

  else
    echo "🚫 Vault log missing."
    echo "⚠️ GlyphVault.log not found."
  fi

  echo "────────────────────────────"
  echo "💫 Search complete."

else
  echo "⚠️ Invalid choice."
fi

flameSig="$(date '+%Y%m%d-%H%M%S')"
echo "🔥 FlameSignature: $flameSig" >> "$vaultLog"