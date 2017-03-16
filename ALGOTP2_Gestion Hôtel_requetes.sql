--Nombre de clients
SELECT COUNT( distinct CLI_ID ) 
from T_CLIENT
--Les clients triés sur le titre et le nom
?
--Les clients triés sur le libellé du titre et le nom
?
--Les clients commençant par 'B'
SELECT CLI_NOM 
from T_CLIENT 
where CLI_NOM like "B%"
--Les clients homonymes
SELECT  CLI_NOM
FROM     T_CLIENT
GROUP BY CLI_NOM
HAVING   COUNT(CLI_NOM) > 1
--Nombre de titres différents
SELECT COUNT( distinct TIT_CODE ) 
from T_TITRE
--Nombre d'enseignes
SELECT COUNT( distinct CLI_ENSEIGNE)
 from T_CLIENT

--Les clients qui représentent une enseigne 
SELECT COUNT( CLI_ENSEIGNE)
 from T_CLIENT

--Les clients qui représentent une enseigne de transports
SELECT CLI_NOM 
from T_CLIENT 
where CLI_ENSEIGNE 
like '%Transports%'
--Nombre d'hommes,Nombres de femmes, de demoiselles, Nombres de sociétés
SELECT  COUNT(CLI_NOM) from T_CLIENT where TIT_CODE like 'M.' ;
SELECT  COUNT(CLI_NOM) from T_CLIENT where TIT_CODE like 'Mme.' ;
SELECT  COUNT(CLI_NOM) from T_CLIENT where TIT_CODE like 'Mlle.';
SELECT  COUNT(distinct CLI_ENSEIGNE) from T_CLIENT ;

--Nombre d''emails
SELECT  COUNT(EML_ID) 
from T_EMAIL  
--Client sans email 
SELECT CLI_NOM 
from T_CLIENT 
where CLI_ID not in (select CLI_ID from T_EMAIL)
--Clients sans téléphone 
SELECT CLI_NOM 
from T_CLIENT 
where CLI_ID not in (select CLI_ID from T_TELEPHONE)
--Les phones des clients
SELECT TEL_NUMERO,CLI_NOM 
from T_TELEPHONE,T_CLIENT
 where T_CLIENT.CLI_ID not in (select CLI_ID from T_EMAIL)
--Ventilation des phones par catégorie
SELECT  TYP_CODE,COUNT(TEL_ID)
FROM     T_TELEPHONE
GROUP BY TYP_CODE;
--Les clients ayant plusieurs téléphones

--Clients sans adresse:

--Clients sans adresse mais au moins avec mail ou phone 

--Dernier tarif renseigné

--Tarif débutant le plus tôt 

--Différentes Années des tarifs

--Nombre de chambres de l'hotel 

--Nombre de chambres par étage

--Chambres sans telephone

--Existence d'une chambre n°13 ?

--Chambres avec sdb

--Chambres avec douche

--Chambres avec WC

--Chambres sans WC séparés

--Quels sont les étages qui ont des chambres sans WC séparés ?

--Nombre d'équipements sanitaires par chambre trié par ce nombre d'équipement croissant

--Chambres les plus équipées et leur capacité

--Repartition des chambres en fonction du nombre d'équipements et de leur capacité

--Nombre de clients ayant utilisé une chambre

--Clients n'ayant jamais utilisé une chambre (sans facture)

--Nom et prénom des clients qui ont une facture

--Nom, prénom, telephone des clients qui ont une facture

--Attention si email car pas obligatoire : jointure externe

--Adresse où envoyer factures aux clients

--Répartition des factures par mode de paiement (libellé)

--Répartition des factures par mode de paiement 

--Différence entre ces 2 requêtes ? 

--Factures sans mode de paiement 

--Repartition des factures par Années

--Repartition des clients par ville

--Montant TTC de chaque ligne de facture (avec remises)

--Classement du montant total TTC (avec remises) des factures

--Tarif moyen des chambres par années croissantes

--Tarif moyen des chambres par étage et années croissantes

--Chambre la plus cher et en quelle année

--Chambre la plus cher par année 

--Clasement décroissant des réservation des chambres 

--Classement décroissant des meilleurs clients par nombre de réservations

--Classement des meilleurs clients par le montant total des factures

--Factures payées le jour de leur édition

--Facture dates et Délai entre date de paiement et date d'édition de la facture