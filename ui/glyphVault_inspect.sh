#!/bin/bash

# 📁 Location of Vault Log
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
