SELECT
ISNULL(id_dim_station_service, 0) as id_dim_station_service,
ISNULL(code_postal, 0) as code_postal,
ISNULL(presence, 'inconnue') as presence,
ISNULL(adresse, 'inconnue') as adresse,
ISNULL(ville, 'inconnue') as ville,
ISNULL(IIF(prix_valeur<0.009, prix_valeur*1000, prix_valeur), 0) as prix_valeur,
ISNULL(nom_carburant, 'inconnue') as nom_carburant,
ISNULL(automate_24, 'inconnue') as automate_24,
ISNULL(marque, 'inconnue') as marque,
ISNULL(nom, 'inconnue') as nom
FROM
( SELECT id_dim_station_service, code_postal, presence, adresse, ville, automate_24, [prix_Gazole] as Gazole, [prix_SP95] as SP95, [prix_SP98] as SP98, [prix_GPLc] as GPLc, [prix_E10] as E10, [prix_E85] as E85, marque, nom 
FROM dbo.DestinationOpenDataSoft ) OrginalData
UNPIVOT
(prix_valeur FOR nom_carburant IN ([Gazole], [SP95], [SP98], [GPLc], [E10], [E85])
) as UNPIVOT_DATA