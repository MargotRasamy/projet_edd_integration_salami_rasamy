/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id_dim_station_service]
      ,[code_postal]
      ,[presence]
      ,[adresse]
      ,[ville]
      ,[automate_24]
      ,[marque]
      ,[nom]
      ,[nom_carburant]
      ,[prix_valeur]
  FROM [DbProjet].[dbo].[DestinationNormalizedUniqueDB]
  WHERE code_postal = '14000'