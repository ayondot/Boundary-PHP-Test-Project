<?php
/**
 * Created by PhpStorm.
 * User: peter
 * Date: 2019-03-13
 * Time: 12:26
 */

namespace BoundaryWS\Middleware;

/*
 * Browsers restrict cross origin requests, (request to localhost from localhost), this script will allow these requests.
 */
class CORSMiddleware {
    /**
     * Example middleware invokable class
     *
     * @param  \Psr\Http\Message\ServerRequestInterface $request  PSR7 request
     * @param  \Psr\Http\Message\ResponseInterface      $response PSR7 response
     * @param  callable                                 $next     Next middleware
     *
     * @return \Psr\Http\Message\ResponseInterface
     */
    public function __invoke($request, $response, $next)
    {
        $response = $next($request, $response);

        return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Access-Control-Allow-Headers', 'Authorization, Accept, Origin, X-Token, Content-Type')
            ->withHeader('Access-Control-Allow-Methods', 'PUT, PATCH, GET, POST, DELETE, OPTIONS');
    }
}