<?php
// DIC configuration

$container = $app->getContainer();

$container['db'] = function ($container) {
    $capsule = new \Illuminate\Database\Capsule\Manager;
    $capsule->addConnection($container['settings']['db']);
    $capsule->setAsGlobal();

    return $capsule;
};

/*
 *  Give each of the controller classes a reference the same instance of our database connection from the
 *  container interface
*/
$container[\BoundaryWS\Controller\AuthController::class] = function ($c) {
    return new \BoundaryWS\Controller\AuthController($c['db']->getConnection());
};
$container[\BoundaryWS\Controller\UserController::class] = function ($container) {
    return new \BoundaryWS\Controller\UserController($container['db']->getConnection());
};
$container[\BoundaryWS\Controller\ProductController::class] = function ($container) {
    return new \BoundaryWS\Controller\ProductController($container['db']->getConnection());
};
