<?php
// Simple test script to check what the endpoints return

echo "<h2>Testing search_animal.php</h2>";

// Test search_animal.php
$search_url = 'http://localhost/equino/search_animal.php?query=001';
$search_context = stream_context_create([
    'http' => [
        'method' => 'GET',
        'header' => "X-Requested-With: XMLHttpRequest\r\n"
    ]
]);

echo "<h3>Search Animal Response:</h3>";
$search_response = file_get_contents($search_url, false, $search_context);
echo "<pre>" . htmlspecialchars($search_response) . "</pre>";

echo "<hr>";

echo "<h2>Testing equino_report.php</h2>";

// Test equino_report.php with a sample tagid
$report_url = 'http://localhost/equino/equino_report.php?tagid=001';
$report_context = stream_context_create([
    'http' => [
        'method' => 'GET',
        'header' => "X-Requested-With: XMLHttpRequest\r\n"
    ]
]);

echo "<h3>Report Response:</h3>";
$report_response = file_get_contents($report_url, false, $report_context);
echo "<pre>" . htmlspecialchars($report_response) . "</pre>";

echo "<hr>";

// Check if response is valid JSON
echo "<h3>JSON Validation:</h3>";
$search_json = json_decode($search_response, true);
if (json_last_error() === JSON_ERROR_NONE) {
    echo "Search response is valid JSON<br>";
    print_r($search_json);
} else {
    echo "Search response is NOT valid JSON. Error: " . json_last_error_msg() . "<br>";
}

echo "<br>";

$report_json = json_decode($report_response, true);
if (json_last_error() === JSON_ERROR_NONE) {
    echo "Report response is valid JSON<br>";
    print_r($report_json);
} else {
    echo "Report response is NOT valid JSON. Error: " . json_last_error_msg() . "<br>";
}
?>
