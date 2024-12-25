# Utiliser une image Python légère
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers du projet
COPY . /app

# Installer les dépendances
RUN pip install --no-cache-dir flask
RUN pip install pytest
RUN pytest

# Exposer le port 5000
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]
