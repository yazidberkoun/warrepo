                    MISE EN PLACE API CHAUSSURE


CREE 2 REPERTOIRES,"TOMCAT" ET "SQL" DANS L'UN,COPIER LES FICHIER :

-dockerfile.sql
-init-db.sql

DANS L'AUTRE,
-dockerfile.tomcat
-dbproject.war

RENOME LES 2 FICHIER " DOCKERFILE.TOMCAT ET DOCKERFILE.SQL" EN " DOCKERFILE "

SE PLACER DANS LE REPERTOIRE SQL ET EXECUTER LES COMMANDE CI DESSOUS :

-  docker build -t postgre .
-  docker run -d --name db -v dbdata:/var/lib/postgresql/data postgre

SE PLACER DANS LE REPERTORE TOMCAT ET EXECTUER LES COMMANDE CI DESSOUS :

-     docker build -t mytomcat:1.0 .

-     docker run -d --name ytom --link db -p 9228:8080 mytomcat:1.0


A LA SUITE DE SA , OUVRE VOTRE NAVIGATEUR ET ENTRÉE DANS LA BARRE DE RECHERCHE
"  LOCALHOST:9228/DBPROJECT/ACCUEIL.JSP "


AUTEUR :   BERKOUN YAZID
