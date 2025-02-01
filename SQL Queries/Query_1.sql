
-- Uniendo las dos tablas con reviews

DROP TABLE IF EXISTS all_reviews;

CREATE TABLE all_reviews AS
SELECT
    'falabella' AS Source,  -- Indica el origen de las reseñas
    comentario,
    calificacion,
    codigo
FROM f_reviews

UNION ALL

SELECT
    'mercadolibre' AS Source,  -- Indica el origen de las reseñas
    Comment AS comentario,
    Rating AS calificacion,
    Codigo AS codigo
FROM mercadolibre_reviews;


-- Creando tabla final con información del maestro de productos
DROP TABLE IF EXISTS combined_reviews;
CREATE TABLE combined_reviews AS
SELECT
    ar.comentario,
    ar.calificacion,
    ar.codigo,
    ws.Enlace,
    ws.`Sitio Web`, -- Nota: Encerramos nombres con espacios en comillas invertidas
    ws.Marca,
    ws.`Modelo estandar`, -- Nota: Encerramos nombres con espacios en comillas invertidas
    ws.Precio
FROM all_reviews ar
LEFT JOIN webscrapping_sources ws
ON ar.codigo = ws.Código;


-- CUENTA DE FILAS EN CADA DATAFARAME:
    -- Número de filas en la tabla f_reviews
SELECT COUNT(*) AS Total_f_reviews FROM f_reviews;

-- Número de filas en la tabla mercadolibre_reviews
SELECT COUNT(*) AS Total_mercadolibre_reviews FROM mercadolibre_reviews;

-- Número de filas en la tabla combined_reviews
SELECT COUNT(*) AS Total_combined_reviews FROM all_reviews;

DROP TABLE IF EXISTS all_reviews;


-- EXPLORATORY DATA ANALYSIS
-- Conteo de reviews
SELECT
	`Modelo estandar` AS Producto,
    COUNT(distinct comentario) AS Numero_de_reviews
FROM combined_reviews
GROUP BY `Modelo estandar`
ORDER BY Numero_de_reviews;

-- Conteo de comentarios
SELECT
	`Modelo estandar` AS Producto,
    COUNT(`Modelo estandar`) AS Numero_de_reviews
FROM combined_reviews
WHERE 
	comentario IS NOT NULL
	AND comentario != ''
GROUP BY `Modelo estandar`
ORDER BY Numero_de_reviews;


-- conteo de dispositivos analizados por marca
SELECT
    Marca,
    COUNT(DISTINCT `Modelo estandar`) AS Numero_de_Modelos
FROM
    combined_reviews
GROUP BY
    Marca
ORDER BY
    Numero_de_Modelos DESC;
    
    
    
SELECT COUNT(DISTINCT comentario) AS unique_comments_count
FROM f_reviews
WHERE comentario IS NOT NULL AND comentario <> '';


SELECT 
    (COUNT(DISTINCT comentario) * 100.0 / COUNT(*)) AS unique_percentage
FROM 
    combined_reviews
WHERE 
    comentario IS NOT NULL AND comentario <> '';






	

