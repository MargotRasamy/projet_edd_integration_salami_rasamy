SELECT 
ISNULL(id_dim_station_service, 0) as id_dim_station_service,
ISNULL(code_postal, 0) as code_postal,
ISNULL(presence, 'inconnue') as presence,
ISNULL(adresse, 'inconnue') as adresse,
UPPER(ISNULL(ville, 'inconnue'))  as ville,
ISNULL(IIF(prix_valeur<0.009, prix_valeur*1000, prix_valeur), 0) as prix_valeur,
ISNULL(nom_carburant, 'inconnue') as nom_carburant,
ISNULL(automate_24, 'inconnue') as automate_24
from dbo.DestinationDataGouv