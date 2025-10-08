<?php

class ChauffeurModel {
    private $pdo;

    public function __construct() {
        try {
            $this->pdo = new PDO("mysql:host=localhost;dbname=bruno_uber;charset=utf8", "root", "");
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Erreur de connexion à la base de données : " . $e->getMessage());
        }
    }

    public function getAllChauffeurs() {
        $stmt = $this->pdo->query("SELECT * FROM Chauffeur");
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function getChauffeurById($id) {
        $stmt = $this->pdo->prepare("SELECT * FROM Chauffeur WHERE id = ?");
        $stmt->execute([$id]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
