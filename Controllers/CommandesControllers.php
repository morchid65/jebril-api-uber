<?php   

// CommandeController.php
require_once __DIR__ . '/../models/CommandesModel.php';
class CommandeController {
    private $model;
    public function __construct() {
        $this->model = new CommandeModel();
    }
    public function getAllCommandes() {
        $commandes = $this->model->getAllCommandes();
        header('Content-Type: application/json');
        echo json_encode($commandes);
    }
}