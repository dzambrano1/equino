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
    
    // Check if table exists
    $checkTableQuery = "SHOW TABLES LIKE 'eh_destete'";
    $stmt = $conn->prepare($checkTableQuery);
    $stmt->execute();
    $tableExists = $stmt->rowCount() > 0;
    
    $response = array();
    
    if ($tableExists) {
        // Check table structure
        $describeQuery = "DESCRIBE eh_destete";
        $stmt = $conn->prepare($describeQuery);
        $stmt->execute();
        $columns = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        // Check if table has data
        $countQuery = "SELECT COUNT(*) as total FROM eh_destete";
        $stmt = $conn->prepare($countQuery);
        $stmt->execute();
        $countResult = $stmt->fetch(PDO::FETCH_ASSOC);
        $totalRecords = $countResult['total'];
        
        // Check if there are records with valid data
        $validDataQuery = "SELECT COUNT(*) as valid_count FROM eh_destete WHERE eh_destete_fecha IS NOT NULL AND eh_destete_peso > 0";
        $stmt = $conn->prepare($validDataQuery);
        $stmt->execute();
        $validResult = $stmt->fetch(PDO::FETCH_ASSOC);
        $validRecords = $validResult['valid_count'];
        
        $response['table_exists'] = true;
        $response['columns'] = $columns;
        $response['total_records'] = $totalRecords;
        $response['valid_records'] = $validRecords;
        
        // Get sample data
        if ($validRecords > 0) {
            $sampleQuery = "SELECT * FROM eh_destete WHERE eh_destete_fecha IS NOT NULL AND eh_destete_peso > 0 LIMIT 3";
            $stmt = $conn->prepare($sampleQuery);
            $stmt->execute();
            $sampleData = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $response['sample_data'] = $sampleData;
        }
        
    } else {
        $response['table_exists'] = false;
        $response['message'] = 'La tabla eh_destete no existe';
        
        // Check what tables exist that might be related
        $showTablesQuery = "SHOW TABLES LIKE '%destete%'";
        $stmt = $conn->prepare($showTablesQuery);
        $stmt->execute();
        $relatedTables = $stmt->fetchAll(PDO::FETCH_COLUMN);
        $response['related_tables'] = $relatedTables;
    }
    
    $response['success'] = true;
    
    echo json_encode($response, JSON_UNESCAPED_UNICODE);
    
} catch (Exception $e) {
    // Return error as JSON
    echo json_encode(['error' => $e->getMessage()]);
}
?>
