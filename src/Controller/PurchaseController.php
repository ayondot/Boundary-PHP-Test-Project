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

class PurchaseController {
    private $db;

    public function __construct(Connection $dbConnection) {
        $this->db = $dbConnection;
    }

    public function getAll(Request $request, Response $response) {   
        $params = $request->getQueryParams();
        $stmt = 'select pro.display_name
                , pur.quantity
                , (pur.quantity * pro.cost) as cost 
                , u.username as buyer
                from purchases pur
                inner join products pro
                on pur.product_id = pro.id
                inner join users u
                on pur.user_id = u.id';
        
        $where = [];
    
        if(isset($params['user_id'])) {
            $stmt = $stmt.' where pur.user_id = ?';
            array_push($where, $params['user_id']);

        }

        if(isset($params['product_id'])) {
            if(sizeof($where) > 0) {
                $stmt = $stmt.' and ';
            } else $stmt = $stmt.' where ';
            $stmt = $stmt.' pur.product_id = ?';
            array_push($where, $params['product_id']);
        }

        $stmt = $stmt.' limit ? offset ?';
        $limit = isset($params['limit']) ? $params['limit'] : 10;
        $offset = isset($params['offset']) ? $params['offset']: 0;
        array_push($where, $limit, $offset);

        $dbResponse = $this->db->select($stmt, $where); 
        return $response->withJson(['purchases' => $dbResponse]);
    }
}