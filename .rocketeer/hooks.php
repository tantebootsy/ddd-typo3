<?php

return [

    // Tasks
    //
    // Here you can define in the `before` and `after` array, Tasks to execute
    // before or after the core Rocketeer Tasks. You can either put a simple command,
    // a closure which receives a $task object, or the name of a class extending
    // the Rocketeer\Abstracts\AbstractTask class
    //
    // In the `custom` array you can list custom Tasks classes to be added
    // to Rocketeer. Those will then be available in the command line
    // with all the other tasks
    //////////////////////////////////////////////////////////////////////

    // Tasks to execute before the core Rocketeer Tasks
    'before' => [
        'setup'   => [],
        'deploy'  => [],
        'cleanup' => [],
    ],

    // Tasks to execute after the core Rocketeer Tasks
    'after'  => [
        'setup'   => [],
        'deploy'  => [],
        'cleanup' => [
            'rm -fr htdocs/typo3temp/Cache',
			#'mysql -u -p -e "SELECT CONCAT( 'TRUNCATE TABLE ', GROUP_CONCAT(table_name) , ';' ) AS statement FROM information_schema.tables WHERE table_schema = 't3_7' AND table_name LIKE 'cf_%';"
        ],
    ],

    // Custom Tasks to register with Rocketeer
    'custom' => [],

];
