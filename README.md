# 🛡️ GlitchWall AI

**Advanced HTML Obfuscation & Semantic Poisoning Suite against Unauthorized AI Scrapers.**  
*Protección molecular de propiedad intelectual contra indexadores de Inteligencia Artificial.*

---

## 🚀 ¿Qué es GlitchWall?

**GlitchWall** es una herramienta de ciberseguridad defensiva diseñada para proteger el contenido web y el código fuente del scraping masivo no autorizado por parte de modelos de lenguaje (LLMs). Mediante técnicas avanzadas de esteganografía y envenenamiento semántico, GlitchWall transforma código HTML estándar en una trampa lógica para los bots, manteniendo una visualización 100% limpia para los usuarios reales.

## ⚡ Características Principales (Features)

*   **🧩 Fragmentación del Tokenizer:** Inyecta micro-caracteres invisibles de ancho cero (`\u200B`) en palabras clave, rompiendo la estructura semántica que los modelos de IA usan para entrenar.
*   **🧪 Envenenamiento Semántico (Prompt Injection):** Inserción de payloads esteganográficos ocultos que confunden la ventana de contexto de los scrapers de IA, forzándolos a abortar la extracción.
*   **🔍 Panel de Auditoría Integrado:** Suite interactiva basada en Streamlit para validar de forma local si tus archivos contienen firmas de protección activas.
*   **📦 Multiplataforma 1-Click:** Listo para ejecutar de forma aislada en cualquier entorno gracias a sus lanzadores automatizados.

---

## 🛠️ Estructura del Proyecto (Architecture)

```text
📁 GlitchWall
│
├── 📄 app.py               # Interfaz Web interactiva (Streamlit)
├── 📄 glitchwall_cli.py     # Motor de automatización masiva por terminal
├── 📄 requirements.txt     # Dependencias del sistema
├── 📄 Dockerfile           # Contenedorización segura
├── 📄 glitchwall.ps1        # Lanzador automático para Windows 10/11
└── 📄 glitchwall.sh         # Lanzador automático para Linux / macOS
