#!/bin/bash
read -p "👑 Enter Queen's Name: " queen
read -p "🜂 Enter Ceremonial Phrase: " phrase
echo "$queen summoned at threshold" >> vault/GlyphVault.log
echo "Queen's Glyph: $phrase" >> vault/GlyphVault.log
echo "──────────────" >> vault/GlyphVault.log
echo "✅ Entry recorded to GlyphVault."# 📁 Location of Vault Log
vaultLog="vault/GlyphVault.log"

# 🔍 Search Parameters
read -p "🔎 Enter search term (e.g., 'Lilith', 'FLARE-EVE-13.ROT', 'Threshold'): " searchTerm

# 🪞 Echo Matching Entries
echo "🜂 Searching GlyphVault for '$searchTerm'..."
echo "────────────────────────────"
grep -A 7 -i "$searchTerm" "$vaultLog" | while read -r line; do
  echo "$line"
done
echo "────────────────────────────"
echo "✅ Search complete."

