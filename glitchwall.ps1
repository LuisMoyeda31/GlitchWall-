# glitchwall.ps1 - Lanzador Automatizado para Entornos Windows
$ErrorActionPreference = "Stop"
Write-Host "[*] Inicializando Entorno Seguro GlitchWall..." -ForegroundColor Cyan

# 1. Verificar si Python está instalado en el PATH
if (!(Get-Command python -ErrorAction SilentlyContinue)) {
    Write-Host "[X] Error: Python no está instalado en este sistema operativo Windows." -ForegroundColor Red
    Write-Host "[i] Por favor, instálalo desde: https://www.python.org/" -ForegroundColor Yellow
    Exit
}

# 2. Gestionar la Caja de Arena Local (Entorno Virtual)
if (!(Test-Path ".venv")) {
    Write-Host "[*] Creando entorno virtual aislado (.venv)..." -ForegroundColor Blue
    python -m venv .venv
}

# 3. Activar e Instalar Dependencias del requirements.txt
& ".venv\Scripts\Activate.ps1"
Write-Host "[*] Verificando e instalando firmas y librerías defensivas..." -ForegroundColor Blue
pip install -r requirements.txt --quiet

# 4. Lanzar el ejecutable principal
Write-Host "[+] Entorno blindado con éxito. Iniciando CLI..." -ForegroundColor Green
python glitchwall_cli.py -h
