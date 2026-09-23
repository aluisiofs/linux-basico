#!/bin/bash

LOG_FILE="app.json.log"

echo "=========================================="
echo "   RELATÓRIO RÁPIDO DE ERROS NO SISTEMA   "
echo "=========================================="

if [ ! -f "$LOG_FILE" ]; then
    echo "Arquivo $LOG_FILE não encontrado!"
    exit 1
fi

echo -e "\n1. Ocorrências com Nível ERROR:"
grep '"level": "ERROR"' "$LOG_FILE"

echo -e "\n2. Quantidade total de Erros detectados:"
grep -c '"level": "ERROR"' "$LOG_FILE"

echo "=========================================="
