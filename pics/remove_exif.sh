#!/bin/bash
# Entfernt alle EXIF-Daten aus allen Bildern im aktuellen Verzeichnis

# Überprüfen, ob exiftool installiert ist
if ! command -v exiftool &> /dev/null; then
    echo "❌ exiftool ist nicht installiert. Installiere es z.B. mit:"
    echo "   sudo apt install libimage-exiftool-perl"
    exit 1
fi

# Schleife über alle gängigen Bildtypen
for img in *.jpg *.jpeg *.png *.tiff *.webp; do
    # Prüfen, ob Dateien existieren (sonst Fehler vermeiden)
    [ -e "$img" ] || continue
    echo "🧹 Entferne EXIF-Daten aus: $img"
    exiftool -all= -overwrite_original "$img"
done

echo "✅ Alle EXIF-Daten wurden entfernt."
