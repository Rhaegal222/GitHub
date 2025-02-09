#!/bin/bash

# Script per installare estensioni di VS Code da un file extensions.txt

echo "🔍 Verifica se VS Code è installato..."
if ! command -v code &> /dev/null; then
    echo "❌ VS Code non è installato. Installa VS Code prima di procedere."
    exit 1
fi

# Controllo se il file extensions.txt esiste
EXTENSIONS_FILE="extensions.txt"

if [ ! -f "$EXTENSIONS_FILE" ]; then
    echo "❌ Il file '$EXTENSIONS_FILE' non è stato trovato. Creane uno con le estensioni da installare."
    exit 1
fi

echo "📦 Installazione delle estensioni da $EXTENSIONS_FILE..."

while IFS= read -r extension || [[ -n "$extension" ]]; do
    echo "🔹 Installazione di: $extension..."
    code --install-extension "$extension"
done < "$EXTENSIONS_FILE"

echo "✅ Tutte le estensioni sono state installate con successo!"
