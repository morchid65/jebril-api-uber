<?php

require_once "../models/ChauffeurModel.php";
require_once "ChauffeurController.php";

$chauffeurController = new ChauffeurController();
$chauffeurController->getAllChauffeurs();