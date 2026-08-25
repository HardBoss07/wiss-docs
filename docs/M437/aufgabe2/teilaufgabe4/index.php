<?php
$host = getenv('DB_HOST');$db   = getenv('DB_NAME');
$user = getenv('DB_USER');$pass = getenv('DB_PASSWORD');

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user,$pass);
    $stmt =$pdo->query("SELECT * FROM users");
    while ($row =$stmt->fetch()) {
        echo "User: " . htmlspecialchars($row['name']) . "<br>";
    }
} catch (PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}