<?php
class Conexion {
    private $host;
    private $dbname;
    private $username;
    private $password;
    private $charset = 'utf8mb4';
    private $pdo;

    public function __construct() {
        $this->host = $_SERVER['HOSTNAME'];
        $this->dbname = $_SERVER['DBNAME'];
        $this->username = $_SERVER['USERNAME'];
        $this->password = $_SERVER['PASSWORD'];
        $dsn = "mysql:host={$this->host};dbname={$this->dbname};charset={$this->charset}";
        try {
            $this->pdo = new PDO($dsn, $this->username, $this->password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Error de conexión: " . $e->getMessage());
        }
    }

    public function getConexion() {
        return $this->pdo;
    }
}



$conexion = new Conexion();
$pdoo = $conexion->getConexion();
var_dump($pdoo); // Para verificar la conexión, puedes eliminar esta línea después de probar

?>