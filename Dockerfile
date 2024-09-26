# Utiliser une image officielle de Python comme image parente
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le contenu du répertoire actuel dans le conteneur à /app
COPY . /app

# Installer les packages nécessaires spécifiés dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Rendre le port 8000 disponible pour le monde extérieur à ce conteneur
EXPOSE 8000

# Définir une variable d'environnement
ENV NAME World

# Exécuter app.py lorsque le conteneur démarre
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

