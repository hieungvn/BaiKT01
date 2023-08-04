<!-- detail.php -->

<?php
require_once '../db_connection.php';

if (isset($_GET['id'])) {
    $employeeId = $_GET['id'];
    $stmt = $conn->prepare("SELECT id, name, address, salary FROM employees WHERE id = :id");
    $stmt->bindParam(':id', $employeeId);
    $stmt->execute();
    $employee = $stmt->fetch(PDO::FETCH_ASSOC);
} else {
    header('Location: index.php');
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Employee details</title>
</head>
<body>

<h2>Employee details</h2>

<p><strong>#:</strong> <?php echo $employee['id']; ?></p>
<p><strong>Name:</strong> <?php echo $employee['name']; ?></p>
<p><strong>Address:</strong> <?php echo $employee['address']; ?></p>
<p><strong>Salary:</strong> <?php echo $employee['salary']; ?></p>

<a href="../index.php">Return LIST OF EMPLOYEES </a>

</body>
</html>
