<?php
// Vérifie si le paramètre "page" est vide ou non présent dans l'URL
if (empty($_GET["page"])) {
    echo json_encode(["error" => "La page n'existe pas"]);
    exit;
}

// On récupère la valeur du paramètre "page"
$url = explode("/", $_GET['page']);

// Fonction pour appeler une méthode si elle existe, sinon renvoyer une erreur
function callControllerMethod($controller, $method, $param = null) {
    if (method_exists($controller, $method)) {
        if ($param !== null) {
            $controller->$method($param);
        } else {
            $controller->$method();
        }
    } else {
        echo json_encode(["error" => "Méthode $method non définie dans le contrôleur"]);
    }
}

// Routeur principal
switch ($url[0]) {
    case "chauffeurs":
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($chauffeurController, "getChauffeurById", $id);
        } else {
            callControllerMethod($chauffeurController, "getAllChauffeurs");
        }
        break;

    case "articles":
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($articleController, "getArticleById", $id);
        } else {
            callControllerMethod($articleController, "getAllArticles");
        }
        break;

    case "categories":
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($categorieController, "getCategorieById", $id);
        } else {
            callControllerMethod($categorieController, "getAllCategories");
        }
        break;

    case "commandes":
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($commandeController, "getCommandeById", $id);
        } else {
            callControllerMethod($commandeController, "getAllCommandes");
        }
        break;

    case "clients":
        if (isset($url[1])) {
            $id = intval($url[1]);
            callControllerMethod($clientController, "getClientById", $id);
        } else {
            callControllerMethod($clientController, "getAllClients");
        }
        break;

    default:
        echo json_encode(["error" => "La page n'existe pas"]);
        break;
}
?>