#!/bin/bash

SEARCH_PATH="${1:-.}"

echo "Procurando por arquivos Zone.Identifier em: $SEARCH_PATH"

# Encontrar e remover arquivos Zone.Identifier
find "$SEARCH_PATH" -name "*Zone.Identifier" -type f | while read -r file; do
    echo "Removendo: $file"
    rm -f "$file"
    if [ $? -eq 0 ]; then
        echo "[REMOVIDO] $file"
    else
        echo "[ERRO] Não foi possível remover: $file"
    fi
done

echo "Operação concluída!"
