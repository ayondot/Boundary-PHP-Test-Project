<?php
// DIC configuration

$container = $app->getContainer();

$container['db'] = function ($container) {
    $capsule = new \Illuminate\Database\Capsule\Manager;
    $capsule->addConnection($container['settings']['db']);
    $capsule->setAsGlobal();

    return $capsule;
};

$container['errorHandler'] = function ($container) {
    return function ($request, $response, $exception) {
        return $response->withStatus(500)
            ->withHeader('Content-Type', 'text/html')
            ->write($exception->getMessage());
    };
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
$container[\BoundaryWS\Controller\PurchaseController::class] = function ($container) {
    return new \BoundaryWS\Controller\PurchaseController($container['db']->getConnection());
};
