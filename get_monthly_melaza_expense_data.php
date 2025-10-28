<?php
header('Content-Type: application/json');

// Include database connection details
require_once "./pdo_conexion.php"; // Adjust path if necessary

// Use mysqli for connection as in the original file provided
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    echo json_encode(['error' => 'Database connection failed: ' . mysqli_connect_error()]);
    exit();
}

mysqli_set_charset($conn, "utf8");

// --- Calculation Logic ---
$monthly_totals = [];
$animal_data = [];
$min_date = null;
$today = new DateTime(); // Use DateTime for easier date manipulation

try {
    // 1. Fetch all relevant melaza records, ordered correctly
    $sql = "
        SELECT
            eh_melaza_tagid,
            eh_melaza_fecha_inicio,
            eh_melaza_fecha_fin,
            eh_melaza_racion,
            eh_melaza_costo
        FROM eh_melaza
        WHERE eh_melaza_racion > 0 AND eh_melaza_costo > 0 -- Consider only valid cost entries
        ORDER BY eh_melaza_tagid, eh_melaza_fecha_inicio ASC;
    ";

    $result = mysqli_query($conn, $sql);

    if (!$result) {
        throw new Exception("Error fetching melaza data: " . mysqli_error($conn));
    }

    if (mysqli_num_rows($result) > 0) {
        // 2. Process data and group by animal (tagid)
        while ($row = mysqli_fetch_assoc($result)) {
            $tagid = $row['eh_melaza_tagid'];
            $fecha_inicio = $row['eh_melaza_fecha_inicio'];
            $fecha_fin = $row['eh_melaza_fecha_fin'];
            
            // Calculate daily cost: racion (daily) × costo
            // Since racion is already a daily figure, this is the cost per day
            $daily_cost = (float)$row['eh_melaza_racion'] * (float)$row['eh_melaza_costo'];

            if (!isset($animal_data[$tagid])) {
                $animal_data[$tagid] = [];
            }
            
            // Store the date range and daily cost for this record
            $animal_data[$tagid][] = [
                'fecha_inicio' => $fecha_inicio,
                'fecha_fin' => $fecha_fin,
                'daily_cost' => $daily_cost
            ];

            // Track the earliest date overall
            if ($min_date === null || $fecha_inicio < $min_date) {
                $min_date = $fecha_inicio;
            }
        }
        mysqli_free_result($result);

        if ($min_date !== null) {
            $start_date = new DateTime($min_date);
            $end_date = $today;
            $interval = new DateInterval('P1D'); // 1 Day interval
            $period = new DatePeriod($start_date, $interval, $end_date->modify('+1 day')); // Include today

            // 3. Iterate through each day from the earliest record until today
            foreach ($period as $current_date) {
                $daily_total_expense = 0;
                $current_date_str = $current_date->format('Y-m-d');

                // 4. For each animal, find the applicable daily cost for the current day
                foreach ($animal_data as $tagid => $records) {
                    // Check if the current date falls within any of the date ranges for this animal
                    foreach ($records as $record) {
                        // Check if current date is within the range [fecha_inicio, fecha_fin]
                        if ($current_date_str >= $record['fecha_inicio'] && 
                            $current_date_str <= $record['fecha_fin']) {
                            // This record applies to the current date
                            $daily_total_expense += $record['daily_cost'];
                            // Only count once per animal per day (use first matching range)
                            break;
                        }
                    }
                } // end loop through animals

                // 5. Aggregate the total daily expense into the correct month
                $month_key = $current_date->format('Y-m');
                if (!isset($monthly_totals[$month_key])) {
                    $monthly_totals[$month_key] = 0;
                }
                $monthly_totals[$month_key] += $daily_total_expense;

            } // end loop through days
        }
    } else {
         // No data found, return empty array or specific message
         echo json_encode([]);
         mysqli_close($conn);
         exit();
    }

    // 6. Format the data for Chart.js
    $chart_data = [];
    // Ensure months are sorted chronologically
    ksort($monthly_totals);
    foreach ($monthly_totals as $month => $total) {
        $chart_data[] = [
            'month' => $month,
            'total_expense' => round($total, 2) // Round to 2 decimal places
        ];
    }

    // 7. Output JSON
    echo json_encode($chart_data);

} catch (Exception $e) {
    error_log("Error calculating monthly expense data: " . $e->getMessage());
    echo json_encode(['error' => 'Error processing request: ' . $e->getMessage()]);
} finally {
    if (isset($conn)) {
        mysqli_close($conn);
    }
}
?>