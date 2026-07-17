# Usamos una versión ligera y segura de Python
FROM python:3.11-slim

# Evita que Python escriba archivos .pyc en el contenedor
ENV PYTHONDONTWRITEBYTECODE=1
# Evita que Python almacene en búfer la salida (útil para ver logs en tiempo real)
ENV PYTHONUNBUFFERED=1

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos e instalamos las dependencias primero para optimizar la caché de Docker
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el motor y la interfaz de la aplicación
COPY app.py .

# Exponemos el puerto nativo de la interfaz de Streamlit
EXPOSE 8501

# Comando seguro para arrancar el panel web local bloqueando accesos externos innecesarios
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
