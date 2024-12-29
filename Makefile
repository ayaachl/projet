# Makefile pour générer le fichier README.md

all: README.md

README.md: guessinggame.sh
	@echo "Création du fichier README.md"
	@echo "# Guessing Game" > README.md
	@echo "Date et heure de la dernière exécution : $(shell date)" >> README.md
	@echo "Nombre de lignes de code dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
