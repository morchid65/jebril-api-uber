<?php

require_once __DIR__ . '../models/ChauffeursModel.php';

class ChauffeurController {
    private $model;

    public function __construct() {
        $this->model = new ChauffeurModel();
    }

    public function getAllChauffeurs() {
        $chauffeurs = $this->model->getAllChauffeurs();
        header('Content-Type: application/json');
        echo json_encode($chauffeurs);
    }

    public function getChauffeurById($id) {
        $chauffeur = $this->model->getChauffeurById($id);
        header('Content-Type: application/json');
        echo json_encode($chauffeur);
    }
}
