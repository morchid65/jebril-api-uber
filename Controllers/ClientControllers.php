<?php  
// ClientController.php
require_once __DIR__ . '/../models/ClientModel.php';
class ClientController {
    private $model;
    public function __construct() {
        $this->model = new ClientModel();
    }
    public function getAllClients() {
        $clients = $this->model->getAllClients();
        header('Content-Type: application/json');
        echo json_encode($clients);
    }
}
?>