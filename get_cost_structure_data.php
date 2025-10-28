<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type');

// Include database connection
require_once './pdo_conexion.php';

try {
    // Create connection using mysqli
    $conn = mysqli_connect($servername, $username, $password, $dbname);

    // Check connection
    if (!$conn) {
        throw new Exception("Connection failed: " . mysqli_connect_error());
    }

    // Set charset to UTF-8
    mysqli_set_charset($conn, "utf8");

    // Initialize cost structure array
    $costStructure = [];
    
    // Define cost categories and their corresponding tables/fields
    $costCategories = [
        'Concentrado' => ['table' => 'eh_concentrado', 'amount_field' => 'eh_concentrado_costo', 'quantity_field' => 'eh_concentrado_racion'],
        'Melaza' => ['table' => 'eh_melaza', 'amount_field' => 'eh_melaza_costo', 'quantity_field' => 'eh_melaza_racion'],
        'Sal' => ['table' => 'eh_sal', 'amount_field' => 'eh_sal_costo', 'quantity_field' => 'eh_sal_racion'],
        'Aftosa' => ['table' => 'eh_aftosa', 'amount_field' => 'eh_aftosa_costo', 'quantity_field' => null],
        'Brucelosis' => ['table' => 'eh_brucelosis', 'amount_field' => 'eh_brucelosis_costo', 'quantity_field' => null],
        'IBR' => ['table' => 'eh_ibr', 'amount_field' => 'eh_ibr_costo', 'quantity_field' => null],
        'CBR' => ['table' => 'eh_cbr', 'amount_field' => 'eh_cbr_costo', 'quantity_field' => null],
        'Carbunco' => ['table' => 'eh_carbunco', 'amount_field' => 'eh_carbunco_costo', 'quantity_field' => null],
        'Garrapatas' => ['table' => 'eh_garrapatas', 'amount_field' => 'eh_garrapatas_costo', 'quantity_field' => null],
        'Lombrices' => ['table' => 'eh_lombrices', 'amount_field' => 'eh_lombrices_costo', 'quantity_field' => null]
    ];

    $totalAmount = 0;

    // Calculate total for each category
    foreach ($costCategories as $categoryName => $config) {
        $table = $config['table'];
        $amountField = $config['amount_field'];
        $quantityField = $config['quantity_field'];

        // Build query based on whether quantity field exists
        if ($quantityField) {
            // For items with quantity (concentrado, melaza, sal)
            $sql = "SELECT SUM($amountField * $quantityField) as total_amount FROM $table WHERE $amountField > 0";
        } else {
            // For vaccines and treatments (single price items)
            $sql = "SELECT SUM($amountField) as total_amount FROM $table WHERE $amountField > 0";
        }

        $result = mysqli_query($conn, $sql);
        
        if ($result) {
            $row = mysqli_fetch_assoc($result);
            $amount = (float)($row['total_amount'] ?? 0);
            
            if ($amount > 0) {
                $costStructure[] = [
                    'category' => $categoryName,
                    'amount' => $amount
                ];
                $totalAmount += $amount;
            }
        }
    }

    // Calculate percentages and format data
    $data = [];
    foreach ($costStructure as $item) {
        $percentage = $totalAmount > 0 ? ($item['amount'] / $totalAmount) * 100 : 0;
        
        $data[] = [
            'category' => $item['category'],
            'amount' => number_format($item['amount'], 2, '.', ''),
            'percentage' => number_format($percentage, 1, '.', ''),
            'value' => $item['amount']
        ];
    }

    // Sort by amount (descending)
    usort($data, function($a, $b) {
        return $b['value'] <=> $a['value'];
    });

    // Close connection
    mysqli_close($conn);

    // Return JSON response
    echo json_encode($data, JSON_UNESCAPED_UNICODE | JSON_NUMERIC_CHECK);

} catch (Exception $e) {
    // Log error for debugging
    error_log("Error in get_cost_structure_data.php: " . $e->getMessage());
    
    // Return error response
    http_response_code(500);
    echo json_encode(array(
        'error' => 'Error al obtener datos de estructura de costos',
        'message' => $e->getMessage()
    ), JSON_UNESCAPED_UNICODE);
}
?>
