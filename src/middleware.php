<?php
/**
 * Created by PhpStorm.
 * User: peter
 * Date: 2019-03-13
 * Time: 12:24
 */

// Add the CORS middleware so that Cross Origin Requests are allowed
$app->add(new \BoundaryWS\Middleware\CORSMiddleware());

// See http://www.slimframework.com/docs/v3/concepts/middleware.html for more information on middleware.