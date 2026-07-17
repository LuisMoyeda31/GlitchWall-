#!/usr/bin/env bash
# glitchwall.sh - Lanzador Automatizado para entornos Unix / Linux / macOS
set -e
echo -e "\033[34m[*] Inicializando Entorno Seguro GlitchWall (Unix Core)...\033[0m"

# 1. Verificar existencia de Python3
if ! command -v python3 &> /dev/null; then
    echo -e "\033[31m[X] Error: Python3 no se encuentra instalado en el sistema operativo.\033[0m"
    exit 1
fi

# 2. Gestionar el entorno virtual aislado (.venv)
if [ ! -d ".venv" ]; then
    echo -e "\033[36m[*] Creando entorno virtual local (.venv)...\033[0m"
    python3 -m venv .venv
fi

# 3. Activar y actualizar paquetes en segundo plano
source .venv/bin/activate
pip install --upgrade pip --quiet
pip install -r requirements.txt --quiet

# 4. Pasar todos los comandos directamente al motor CLI
echo -e "\033[32m[+] Entorno validado con éxito. Ejecutando GlitchWall...\033[0m"
python3 glitchwall_cli.py "$@"
