#!/bin/bash

# Paths
ROOT="$HOME/signalwave/vault"
BELLA_PAGE="$ROOT/Queens/bella.html"
GABBY_PAGE="$ROOT/Queens/gabby.html"
BELLA_TEXT="$ROOT/ui/bella_sanctum.txt"

# Step 1: Extract Gabby's sanctum from Bella (if not already split)
awk '/<!-- GABBY START -->/,/<!-- GABBY END -->/' "$BELLA_PAGE" > "$GABBY_PAGE"

# Step 2: Remove Gabby's segment from Bella's page
sed -i '/<!-- GABBY START -->/,/<!-- GABBY END -->/d' "$BELLA_PAGE"

# Step 3: Insert Bella’s prose after a known marker
if [ -f "$BELLA_TEXT" ]; then
  sed -i '/<!-- BELLA SANCTUM -->/r '"$BELLA_TEXT" "$BELLA_PAGE"
else
  echo "⚠️ Missing Bella’s prose file: $BELLA_TEXT"
  exit 1
fi

# Step 4: Confirm sanctum status
echo "🕊️ Sanctum alignment complete:"
echo "✅ Gabby resides in: $GABBY_PAGE"
echo "🌘 Bella restored in: $BELLA_PAGE"