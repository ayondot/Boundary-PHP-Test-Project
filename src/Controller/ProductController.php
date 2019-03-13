<?php
/**
 * Created by PhpStorm.
 * User: peter
 * Date: 2019-03-12
 * Time: 15:30
 */

namespace BoundaryWS\Controller;

use Illuminate\Database\Connection;
use Slim\Http\Request;
use Slim\Http\Response;

class ProductController {

    private $db;

    public function __construct(Connection $dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAll(Request $request, Response $response) {
        $productQueryResults = $this->db->select('select * from products');

        return $response->withJson(['products' => $productQueryResults]);
    }

}