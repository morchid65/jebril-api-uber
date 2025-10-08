<?php   

// CategorieController.php
require_once __DIR__ . '/../models/CategorieModel.php';
class CategorieController {
    private $model;
    public function __construct() {
        $this->model = new CategorieModel();
    }
    public function getAllCategories() {
        $categories = $this->model->getAllCategories();
        header('Content-Type: application/json');
        echo json_encode($categories);
    }
}