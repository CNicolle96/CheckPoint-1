#!/bin/bash

###  Script qui permet de créer les utilisateurs locaux donnés en argument

# Vérification du nombre d'arguments
if [ $# -eq 0 ]
then
	echo "Il manque les noms d'utilisateurs en argument - Fin du script"
	exit 1
fi

# On traite chaque argument 1 à 1
for i in $*
 do
 	# véfication de la syntaxe du nom
	if ! [[ "$i" =~ ^[a-z][a-zA-Z0-9_]*$ ]]
	then 
		echo "Le nom d'utilisateur $i ne respecte pas les règles de nom (uniquement lettres, chiffre ou _ et doit absolument commencer par une minuscule) ."
		continue
	fi
	# on vérifie si l'utilisateur est dans la liste des utilisateurs locaux
	if awk -F: '{ print $1}' /etc/passwd | grep -w "$i" > /dev/null
	then
		echo "L'utilisateur $i existe déjà"
	else
		if sudo useradd "$i"  # on crée l'utilisateur sans mot de passe et on vérifie la sortie
		then
			echo "L'utilisateur $i a été créé."
		else
			echo "Erreur à la création de l'utilisateur $i."
		fi
	fi
done
exit 0
