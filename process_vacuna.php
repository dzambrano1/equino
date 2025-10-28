<?php
require_once './pdo_conexion.php';  // Go up one directory since inventario_equino.php is in the equino folder
// Now you can use $conn for database queries

$conn = new mysqli($servername, $username, $password, $dbname);

// Handle DELETE requests
if (isset($_POST['action']) && $_POST['action'] === 'delete') {
    $id = $conn->real_escape_string($_POST['id']);
    
    $query = "DELETE FROM eh_aftosa WHERE eh_aftosa_id = '$id'";
    
    if ($conn->query($query)) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'error' => $conn->error]);
    }
    exit;
}

// Handle INSERT requests
if ($_SERVER['REQUEST_METHOD'] === 'POST' && !isset($_POST['action'])) {
    $tagid = $conn->real_escape_string($_POST['tagid']);
    $producto = $conn->real_escape_string($_POST['producto']);
    $costo = $conn->real_escape_string($_POST['costo']);
    $dosis = $conn->real_escape_string($_POST['dosis']);
    $fecha = $conn->real_escape_string($_POST['fecha']);
    
    $query = "INSERT INTO eh_aftosa (eh_aftosa_tagid, eh_aftosa_producto, eh_aftosa_costo, eh_aftosa_dosis, eh_aftosa_fecha) 
              VALUES ('$tagid', '$producto', '$costo', '$dosis', '$fecha')";
    
    if ($conn->query($query)) {
        header('Location: ' . $_SERVER['HTTP_REFERER']);
    } else {
        echo json_encode(['success' => false, 'error' => $conn->error]);
    }
    exit;
}

$conn->close();
?> 