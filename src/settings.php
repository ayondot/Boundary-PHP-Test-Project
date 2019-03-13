<?php
return [
    'settings' => [
        'displayErrorDetails' => true, // set to false in production
        'db' => [
            'driver' => 'pgsql',
            'host' => 'localhost',
            'port' => '5432',
            'database' => 'postgres',
            'username' => 'postgres',
            'password' => 'postgres',
            'schema' => 'boundary_test',
            'charset'   => 'utf8',
            'collation' => 'utf8_unicode_ci',
        ]
    ],
];
