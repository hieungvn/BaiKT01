<!-- edit.php -->

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

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $address = $_POST['address'];
    $salary = $_POST['salary'];

    $stmt = $conn->prepare("UPDATE employees SET name = :name, address = :address, salary = :salary WHERE id = :id");
    $stmt->bindParam(':id', $employeeId);
    $stmt->bindParam(':name', $name);
    $stmt->bindParam(':address', $address);
    $stmt->bindParam(':salary', $salary);
    $stmt->execute();


    header('Location: detail.php?id=' . $employeeId);
    exit;
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Edit employee information</title>
</head>
<body>

<h2>Edit employee information</h2>

<form method="post">
    <p><strong>#:</strong> <?php echo $employee['id']; ?></p>
    <p>
        <strong>Name:</strong>
        <input type="text" name="name" value="<?php echo $employee['name']; ?>">
    </p>
    <p>
        <strong>Address:</strong>
        <input type="text" name="address" value="<?php echo $employee['address']; ?>">
    </p>
    <p>
        <strong>Salary:</strong>
        <input type="text" name="salary" value="<?php echo $employee['salary']; ?>">
    </p>

    <input type="submit" value="Save">

    <a href="../index.php">Return LIST OF EMPLOYEES</a>
</form>

</body>
</html>
