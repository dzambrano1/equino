<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

// Include database connection
require_once './pdo_conexion.php';

try {
    // Verify connection is PDO
    if (!($conn instanceof PDO)) {
        throw new Exception("Error: La conexión no es una instancia de PDO");
    }
    
    // Enable PDO error mode
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // SQL query to get weaning data grouped by month
    $sql = "SELECT 
                DATE_FORMAT(eh_destete_fecha, '%Y-%m') as month,
                COUNT(*) as weaning_count,
                AVG(eh_destete_peso) as avg_weight,
                SUM(eh_destete_peso) as total_weight,
                GROUP_CONCAT(eh_destete_tagid ORDER BY eh_destete_tagid SEPARATOR ', ') as tagids,
                COUNT(*) as record_count
            FROM eh_destete 
            WHERE eh_destete_fecha IS NOT NULL 
            AND eh_destete_peso > 0
            GROUP BY DATE_FORMAT(eh_destete_fecha, '%Y-%m')
            ORDER BY DATE_FORMAT(eh_destete_fecha, '%Y-%m') ASC";

    $stmt = $conn->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $data = array();
    
    if (count($result) > 0) {
        foreach ($result as $row) {
            $data[] = array(
                'month' => $row['month'],
                'weaning_count' => (int)$row['weaning_count'],
                'avg_weight' => number_format((float)$row['avg_weight'], 2, '.', ''),
                'total_weight' => number_format((float)$row['total_weight'], 2, '.', ''),
                'tagids' => $row['tagids'] ? $row['tagids'] : '',
                'record_count' => (int)$row['record_count']
            );
        }
    }

    // Return JSON response
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_NUMERIC_CHECK);

} catch (Exception $e) {
    // Log error for debugging
    error_log("Error in get_weaning_data.php: " . $e->getMessage());
    
    // Return error response
    http_response_code(500);
    echo json_encode(array(
        'error' => 'Error al obtener datos de destetes',
        'message' => $e->getMessage()
    ), JSON_UNESCAPED_UNICODE);
}
?> 