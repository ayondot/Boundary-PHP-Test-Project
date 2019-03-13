<?php

use BoundaryWS\Controller\AuthController;
use BoundaryWS\Controller\ProductController;
use BoundaryWS\Controller\PurchaseController;
use BoundaryWS\Controller\UserController;

$app->group('/api', function () {
    $this->post('/auth/login', AuthController::class . ':login');
    $this->get('/users', UserController::class . ':getAll');
    $this->get('/users/{p_id}', UserController::class . ':getById');
    $this->get('/products', ProductController::class . ':getAll');
    $this->get('/purchases', PurchaseController::class . ':getAll');
});