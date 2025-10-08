<?php   

// ArticleController.php
require_once __DIR__ . '/../models/ArticleSModel.php';
class ArticleController {
    private $model;
    public function __construct() {
        $this->model = new ArticleModel();
    }
    public function getAllArticles() {
        $articles = $this->model->getAllArticles();
        header('Content-Type: application/json');
        echo json_encode($articles);
    }
}