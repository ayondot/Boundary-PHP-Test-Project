<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'db' => [
            'driver' => 'pgsql',
            'host' => 'localhost',
            'port' => '5432',
            'database' => 'oneshop',
            'username' => 'postgres',
            'password' => 'postgres',
            'schema' => 'public',
            'charset'   => 'utf8',
            'collation' => 'utf8_unicode_ci',
        ]
    ],
];
