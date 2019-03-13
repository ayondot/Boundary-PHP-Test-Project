<?php
/**
 * Created by PhpStorm.
 * User: peter
 * Date: 2019-03-13
 * Time: 15:08
 */

namespace BoundaryWS\Controller;

use Illuminate\Database\Connection;
use Slim\Http\Request;
use Slim\Http\Response;

class AuthController
{
    private $db;

    public function __construct(Connection $db) {
        $this->db = $db;
    }

    public function login(Request $request, Response $response) {
        $payload = $request->getParsedBody();

        $username = $payload['username'];
        $password = $payload['password'];

        $user = $this->db->select('select * from users where username = ? and password = ?', [$username, $password]);

        if (count($user) == 0) {
            return $response->withJson(['error' => 'Username and password combination doesn\'t exist!'], 401);
        } else {
            return $response->withStatus(202);
        }
    }

}