# Specify a base image
FROM node:alpine

# Si pas de chemin spécifié avec WORKDIR, npm install est executé à la racine du repertoire du container
WORKDIR /usr/app

# Copie le package.json, évite de réinstaller toutes les dépendances en cas de rebuild après modiification
COPY ./package.json ./

# Install somme dependencies
RUN npm install

# Copie le dossier node modules de ma machine au container
COPY ./ ./

# Default command
CMD ["npm", "start"]