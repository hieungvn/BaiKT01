<?php
// index.php

require_once 'db_connection.php';

if (isset($_GET['delete_id'])) {
    $employeeId = $_GET['delete_id'];


    $stmt = $conn->prepare("DELETE FROM employees WHERE id = :id");
    $stmt->bindParam(':id', $employeeId);
    $stmt->execute();


    header('Location: index.php');
    exit;
}

// Lấy dữ liệu từ bảng employees
$stmt = $conn->prepare("SELECT id, name, address, salary, action FROM employees");
$stmt->execute();
$employees = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <title>EMPLOYEES MANAGER</title>
<!--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        <style>
         .action-icons {
             display: flex;
             justify-content: space-between;
         }

        .action-btn {
            padding: 5px 10px;
            margin-right: 5px;
        }
    </style>
</head>
<body>

<h2>LIST OF EMPLOYEES</h2>

<table>
    <tr>
        <th>#</th>
        <th>Name</th>
        <th>Address</th>
        <th>Salary</th>
        <th>Action</th>
    </tr>

    <?php

    foreach ($employees as $employee) {
        echo "<tr>";
        echo "<td>" . $employee['id'] . "</td>";
        echo "<td>" . $employee['name'] . "</td>";
        echo "<td>" . $employee['address'] . "</td>";
        echo "<td>" . $employee['salary'] . "</td>";
        echo "<td class='action-icons'>";
        echo "<a href='action/detail.php?id=" . $employee['id'] . "' class='action-btn'><i class='bi bi-eye'></i></a>";

        echo "<a href='action/edit.php?id=" . $employee['id'] . "' class='action-btn'><i class='bi bi-pencil-square''></i></a>";

        echo "<a href='action/detail.php?id=" . $employee['id'] . "' class='action-btn' onclick='return confirmDelete()'><i class='bi bi-trash'></i></a>";
        echo "</td>";
        echo "</tr>";
    }
    ?>

</table>
<script>
    function confirmDelete() {
        return confirm("Are you sure you want to delete this employee?");
    }
</script>
<!--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>-->
</body>
</html>
