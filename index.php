<?php
// En-tête JSON
header('Content-Type: application/json');

// Inclusions (chemins robustes)
require_once __DIR__ . '/controllers/ChauffeurController.php';
require_once __DIR__ . '/controllers/ArticleController.php';
require_once __DIR__ . '/controllers/CategorieController.php';
require_once __DIR__ . '/controllers/CommandeController.php';
require_once __DIR__ . '/controllers/ClientController.php';

// Instanciation des contrôleurs
$chauffeurController = new ChauffeurController();
$articleController   = new ArticleController();
$categorieController = new CategorieController();
$commandeController  = new CommandeController();
$clientController    = new ClientController();

// Vérifie si le paramètre "page" est vide ou non présent dans l'URL
if (empty($_GET['page'])) {
    http_response_code(404);
    echo json_encode(['error' => "La page n'existe pas"]);
    exit;
}

// On récupère la valeur du paramètre "page"
$url = explode('/', $_GET['page']);

// Fonction utilitaire pour appeler la méthode d'un contrôleur
function callControllerMethod($controller, $method, $param = null) {
    if (!method_exists($controller, $method)) {
        echo json_encode(['error' => "Méthode $method non définie dans le contrôleur"]);
        return;
    }
    if ($param !== null) {
        $controller->$method($param);
    } else {
        $controller->$method();
    }
}

// Routeur principal
switch ($url[0]) {
    case 'chauffeurs':
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($chauffeurController, 'getChauffeurById', $id);
        } else {
            callControllerMethod($chauffeurController, 'getAllChauffeurs');
        }
        break;

    case 'articles':
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($articleController, 'getArticleById', $id);
        } else {
            callControllerMethod($articleController, 'getAllArticles');
        }
        break;

    case 'categories':
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($categorieController, 'getCategorieById', $id);
        } else {
            callControllerMethod($categorieController, 'getAllCategories');
        }
        break;

    case 'commandes':
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($commandeController, 'getCommandeById', $id);
        } else {
            callControllerMethod($commandeController, 'getAllCommandes');
        }
        break;

    case 'clients':
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($clientController, 'getClientById', $id);
        } else {
            callControllerMethod($clientController, 'getAllClients');
        }
        break;

    default:
        http_response_code(404);
        echo json_encode(['error' => "La page n'existe pas"]);
        break;
}