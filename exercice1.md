### Exercice 1 : Partition et Debian 12
#### Question 1
Aperçu des partitions et lancement de la commande pour créer de nouvelles partitions :  
![Premier lsblk et fdisk](./Images/lsblk1.png)  
Création des partions dans le ```/dev/sdb``` :  (avec à la fin un ```w``` pour sortir et écrire la table de partition)  
![Commande dans le fdisk](./Images/fdisk.png)  
Désactivation du Swap de base :
![Arrêt swap](./Images/arret_swap.png)  
Formatage des différentes partitions avec leur type et leur label :  
![Formatage des partitions](./Images/formatage_part.png)  
Activation du nouveau Swap :  
![Swapon](./Images/swap_sdb2.png)  
Les partitions avec leur label :  
![Label des partitions](./Images/label_part.png)  
Les partitions avec leur UUID :  
![UUID des partitions](./Images/uuid_part.png)  
Les partitions avec leur type de système de fichier et leur taille :  
![Type des partitions](./Images/type_part.png)  

#### Question 2
Création du dossier et lancement de la commande pour modifier le fichier ```/etc/fstab``` :  
![Création de /mnt/data](./Images/creation_dossier.png)  
Modification du fichier en question :  
![Modification de /etc/fcstab](./Images/fcstab.png)  
Vérification du montage grâce à ```mount -a```.  
![Vérification](./Images/mount.png)  
