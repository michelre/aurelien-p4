# Listing des clients
SELECT *
FROM client

# Listing des commandes d’un client
SELECT *
FROM commande
WHERE commande.client_id = 1


# Liste des articles commandés par le client 1
SELECT article.*
FROM article
INNER JOIN article_commande ON article.id = article_commande.article_id
INNER JOIN commande ON article_commande.commande_id = commande.id
INNER JOIN client ON commande.client_id = client.id
WHERE client.id = 1


# CA Du jour
SELECT SUM(commande.prix_ht)
FROM commande
WHERE commande.date_commande = CURDATE()
