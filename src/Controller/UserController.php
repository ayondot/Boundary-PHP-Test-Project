<?php
/**
 * Created by PhpStorm.
 * User: peter
 * Date: 2019-03-12
 * Time: 15:25
 */

namespace BoundaryWS\Controller;

use Illuminate\Database\Connection;
use Slim\Http\Request;
use Slim\Http\Response;

class UserController {
    private $db;

    public function __construct(Connection $dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAll(Request $request, Response $response) {
        $dbResponse = $this->db->select(
            'select * from users'
        );
        return $response->withJson(['users' => $dbResponse]);
    }

    public function getById(Request $request, Response $response, array $params) {
        $id = $params['p_id'];

        $dbResponse = $this->db->select(
            'select * from users where id = ?', [$id]
        );

        // A SQL query will always return a COLLECTION of rows that match the request,
        // Here we know 'id' is a primary key and there will only be one row result,
        // To keep our response pretty, return the row entry as a single object.
        return $response->withJson($dbResponse[0]);
    }

}