#!/bin/bash

# Script de ejecución del Bot de Citas de Extranjería
# Propósito: Activar entorno virtual y ejecutar el bot automáticamente

echo "🚀 Iniciando Bot Verificador de Citas de Extranjería"
echo "=================================================="

# Obtener directorio del script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
cd "$DIR"

# Verificar que existe el entorno virtual
if [ ! -d "venv" ]; then
    echo "❌ Error: No se encuentra el entorno virtual"
    echo "💡 Ejecuta primero: python3 -m venv venv"
    exit 1
fi

# Activar entorno virtual
echo "🔧 Activando entorno virtual..."
source venv/bin/activate

# Verificar dependencias
echo "📦 Verificando dependencias..."
pip install -r requirements.txt --quiet

# Ejecutar el bot
echo "🤖 Ejecutando bot..."
echo ""
python src/bot_citas_extranjeria.py

# Desactivar entorno virtual al salir
deactivate

echo ""
echo "👋 Bot finalizado. ¡Gracias por usar el verificador ético!"
