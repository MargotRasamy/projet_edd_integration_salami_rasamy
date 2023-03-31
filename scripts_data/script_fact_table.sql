SELECT id_dim_adresse, id_dim_automate_24, id_dim_presence, id_dim_type_carburant, id_fonctionnel_station_service, prix_valeur, dbo.DimStationService.id_dim_station_service
FROM 
dbo.DestinationNormalizedUniqueDB JOIN
dbo.DimStationService ON dbo.DestinationNormalizedUniqueDB.id_dim_station_service = dbo.DimStationService.id_fonctionnel_station_service AND dbo.DestinationNormalizedUniqueDB.nom = dbo.DestinationNormalizedUniqueDB.nom JOIN
dbo.DimTypeCarburant ON dbo.DestinationNormalizedUniqueDB.nom_carburant = dbo.DestinationNormalizedUniqueDB.nom_carburant JOIN
dbo.DimAdresse ON dbo.DestinationNormalizedUniqueDB.adresse = dbo.DimAdresse.adresse AND dbo.DestinationNormalizedUniqueDB.code_postal = dbo.DimAdresse.code_postal JOIN
dbo.DimPresence ON dbo.DestinationNormalizedUniqueDB.presence = dbo.DimPresence.presence JOIN
dbo.DimAutomate24 ON dbo.DestinationNormalizedUniqueDB.automate_24 = dbo.DimAutomate24.automate_24


