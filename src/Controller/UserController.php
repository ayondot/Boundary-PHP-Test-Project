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
        $params = $request->getQueryParams();     
        $limit = isset($params['limit']) ? $params['limit'] : 10;
        $offset = isset($params['offset']) ? $params['offset']: 0;

        $dbResponse = $this->db->select(
            'select * from users limit ? offset ?', [$limit, $offset]
        );

        // don't reveal user passwords
        foreach ($dbResponse as &$value) {
            unset($value->password); 
        }
        unset($value); // break the reference with the last element
        
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

    public function update(Request $request, Response $response, array $params) {
        $payload = $request->getParsedBody();
        
        // if user_id not set in params, do what??
        
        $first_name = $payload['first_name'];
        $second_name = $payload['second_name'];
        $username = $payload['username'];
        $user_id = $params['p_id'];

        $stmt = 'update users set
            first_name = ?
            , second_name = ?
            , username = ?
            where id = ?';

        $this->db->select($stmt, [$first_name, $second_name, $username, $user_id]);
        return $response->withJson(['message' => 'User profile updated successfully'], 201);
    }

}