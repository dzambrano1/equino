<?php
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
    
    // Check if fields already exist
    $checkFieldsQuery = "SHOW COLUMNS FROM equino LIKE 'deceso_fecha'";
    $stmt = $conn->prepare($checkFieldsQuery);
    $stmt->execute();
    $decesoFechaExists = $stmt->rowCount() > 0;
    
    $checkFieldsQuery = "SHOW COLUMNS FROM equino LIKE 'deceso_causa'";
    $stmt = $conn->prepare($checkFieldsQuery);
    $stmt->execute();
    $decesoCausaExists = $stmt->rowCount() > 0;
    
    $response = array();
    
    // Add deceso_fecha field if it doesn't exist
    if (!$decesoFechaExists) {
        $addFechaQuery = "ALTER TABLE equino ADD COLUMN deceso_fecha DATE NULL";
        $conn->exec($addFechaQuery);
        $response['deceso_fecha_added'] = true;
    } else {
        $response['deceso_fecha_exists'] = true;
    }
    
    // Add deceso_causa field if it doesn't exist
    if (!$decesoCausaExists) {
        $addCausaQuery = "ALTER TABLE equino ADD COLUMN deceso_causa VARCHAR(255) NULL";
        $conn->exec($addCausaQuery);
        $response['deceso_causa_added'] = true;
    } else {
        $response['deceso_causa_exists'] = true;
    }
    
    $response['success'] = true;
    $response['message'] = 'Campos de deceso verificados/agregados correctamente';
    
    echo json_encode($response);
    
} catch (Exception $e) {
    // Return error as JSON
    echo json_encode(['error' => $e->getMessage()]);
}
?>
