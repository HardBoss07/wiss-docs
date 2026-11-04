<?php
$host = getenv('DB_HOST');
$db   = getenv('DB_NAME');
$user = getenv('DB_USER');
$pass = getenv('DB_PASSWORD');

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Formularverarbeitung (Hinzufügen & Löschen)
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        if (isset($_POST['add']) && !empty(trim($_POST['task']))) {
            $stmt = $pdo->prepare("INSERT INTO todos (task) VALUES (?)");
            $stmt->execute([trim($_POST['task'])]);
        } elseif (isset($_POST['delete'])) {
            $stmt = $pdo->prepare("DELETE FROM todos WHERE id = ?");
            $stmt->execute([$_POST['id']]);
        }
        header("Location: index.php");
        exit;
    }

    // Aufgaben auslesen
    $todos = $pdo->query("SELECT * FROM todos ORDER BY id DESC")->fetchAll(PDO::FETCH_ASSOC);
} catch (PDOException $e) {
    die("Fehler bei der Datenbankverbindung: " . $e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <title>PHP Docker To-Do App</title>
    <style>
        body { font-family: sans-serif; max-width: 500px; margin: 40px auto; padding: 0 20px; }
        form { margin-bottom: 20px; }
        input[type="text"] { padding: 8px; width: 70%; }
        button { padding: 8px 12px; cursor: pointer; }
        ul { list-style: none; padding: 0; }
        li { display: flex; justify-content: space-between; padding: 8px 0; border-bottom: 1px solid #ccc; }
        .delete-btn { background: #ff4d4d; color: white; border: none; border-radius: 4px; }
    </style>
</head>
<body>
    <h1>To-Do Liste</h1>

    <form method="POST">
        <input type="text" name="task" placeholder="Neue Aufgabe..." required>
        <button type="submit" name="add">Hinzufügen</button>
    </form>

    <ul>
        <?php foreach ($todos as $todo): ?>
            <li>
                <?= htmlspecialchars($todo['task']) ?>
                <form method="POST" style="margin: 0;">
                    <input type="hidden" name="id" value="<?= $todo['id'] ?>">
                    <button type="submit" name="delete" class="delete-btn">Löschen</button>
                </form>
            </li>
        <?php endforeach; ?>
    </ul>
</body>
</html>