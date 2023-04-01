SELECT DimStationService.id_dim_station_service, DimTypeCarburant.id_dim_type_carburant, DestinationNormalizedUniqueDB.prix_valeur,  DimAdresse.id_dim_adresse, DimPresence.id_dim_presence, DimAutomate24.id_dim_automate_24
FROM     DestinationNormalizedUniqueDB LEFT JOIN
                  DimStationService ON DestinationNormalizedUniqueDB.id_dim_station_service = DimStationService.id_fonctionnel_station_service AND DestinationNormalizedUniqueDB.nom = DestinationNormalizedUniqueDB.nom INNER JOIN
				  DimAdresse ON DestinationNormalizedUniqueDB.adresse = DimAdresse.adresse INNER JOIN
				  DimTypeCarburant ON DestinationNormalizedUniqueDB.nom_carburant = DimTypeCarburant.nom_carburant INNER JOIN
				  DimAutomate24 ON DestinationNormalizedUniqueDB.automate_24 = DimAutomate24.automate_24 INNER JOIN
				  DimPresence ON DestinationNormalizedUniqueDB.presence = DimPresence.presence
ORDER BY DimStationService.id_dim_station_service