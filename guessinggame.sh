#!/bin/bash

# Fonction pour compter les fichiers dans le répertoire actuel
function guess_files() {
  local file_count=$(ls -1 | wc -l)  # Compte le nombre de fichiers
  local guess=-1
  
  # Demander à l'utilisateur de deviner le nombre de fichiers
  while [[ $guess -ne $file_count ]]
  do
    echo "Devine combien de fichiers il y a dans ce répertoire :"
    read guess

    if [[ $guess -lt $file_count ]]
    then
      echo "Trop bas, essaie encore !"
    elif [[ $guess -gt $file_count ]]
    then
      echo "Trop haut, essaie encore !"
    else
      echo "Félicitations, tu as deviné correctement !"
    fi
  done
}

# Appel de la fonction pour démarrer le jeu
guess_files
