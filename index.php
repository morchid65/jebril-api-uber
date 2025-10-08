<?php
// En-tête JSON
header('Content-Type: application/json');

// Inclusions (chemins robustes)
require_once __DIR__ . '/Controllers/ChauffeurControllers.php';
require_once __DIR__ . '/Controllers/ArticlesController.php';
require_once __DIR__ . '/Controllers/CategorieControllers.php';
require_once __DIR__ . '/Controllers/CommandesControllers.php';
require_once __DIR__ . '/Controllers/ClientControllers.php';

// Instanciation des contrôleurs
$chauffeurController = new ChauffeurControllers();
$articleController   = new ArticlesController();
$categorieController = new CategorieControllers();
$commandeController  = new CommandesControllers();
$clientController    = new ClientControllers();

// Vérifie si le paramètre "page" est vide ou non présent dans l'URL
if (empty($_GET['page'])) {
    http_response_code(404);
    echo json_encode(['error' => "Le paramètre 'page' est manquant"]);
    exit;
}

// On récupère la valeur du paramètre "page"
$url = explode('/', $_GET['page']);

// Fonction utilitaire pour appeler la méthode d'un contrôleur
function callControllerMethod($controller, $method, $param = null) {
    if (!method_exists($controller, $method)) {
        http_response_code(400);
        echo json_encode(['error' => "Méthode '$method' non définie dans le contrôleur"]);
        return;
    }

    try {
        if ($param !== null) {
            $controller->$method($param);
        } else {
            $controller->$method();
        }
    } catch (Exception $e) {
        http_response_code(500);
        echo json_encode(['error' => "Erreur interne : " . $e->getMessage()]);
    }
}

// Routeur principal
switch (strtolower($url[0])) {
    case 'chauffeurs':
        $method = isset($url[1]) ? 'getChauffeurById' : 'getAllChauffeurs';
        $param  = isset($url[1]) ? intval($url[1]) : null;
        callControllerMethod($chauffeurController, $method, $param);
        break;

    case 'articles':
        $method = isset($url[1]) ? 'getArticleById' : 'getAllArticles';
        $param  = isset($url[1]) ? intval($url[1]) : null;
        callControllerMethod($articleController, $method, $param);
        break;

    case 'categories':
        $method = isset($url[1]) ? 'getCategorieById' : 'getAllCategories';
        $param  = isset($url[1]) ? intval($url[1]) : null;
        callControllerMethod($categorieController, $method, $param);
        break;

    case 'commandes':
        $method = isset($url[1]) ? 'getCommandeById' : 'getAllCommandes';
        $param  = isset($url[1]) ? intval($url[1]) : null;
        callControllerMethod($commandeController, $method, $param);
        break;

    case 'clients':
        $method = isset($url[1]) ? 'getClientById' : 'getAllClients';
        $param  = isset($url[1]) ? intval($url[1]) : null;
        callControllerMethod($clientController, $method, $param);
        break;

    default:
        http_response_code(404);
        echo json_encode(['error' => "La ressource '" . htmlspecialchars($url[0]) . "' est inconnue"]);
        break;
}
