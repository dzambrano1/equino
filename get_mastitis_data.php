<?php
// Include database connection
require_once './pdo_conexion.php';

// Set content type to JSON
header('Content-Type: application/json');

try {
    // Verify connection is PDO
    if (!($conn instanceof PDO)) {
        throw new Exception("Error: La conexión no es una instancia de PDO");
    }
    
    // Enable PDO error mode
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Query to get mastitis data ordered by date - Only for "Vacas" group
    $query = "SELECT         
                eh_mastitis_fecha as fecha, 
                eh_mastitis_dosis as dosis,
                eh_mastitis_costo as costo,
                eh_mastitis_producto as vacuna,
                v.nombre as animal_nombre,
                eh_mastitis_tagid as tagid
              FROM eh_mastitis
              LEFT JOIN equino v ON eh_mastitis_tagid = v.tagid 
              WHERE v.grupo = 'Vacas'
              ORDER BY eh_mastitis_fecha ASC";
    
    // Fetch all records as associative array
    $result = $conn->query($query)->fetchAll(PDO::FETCH_ASSOC);
    
    // Output the result as JSON
    echo json_encode($result);
    
} catch (Exception $e) {
    // Return error as JSON
    echo json_encode(['error' => $e->getMessage()]);
}
?> 