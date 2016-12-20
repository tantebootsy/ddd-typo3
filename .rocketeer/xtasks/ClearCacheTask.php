<?php
namespace MichaelBakonyi\Tasks;

require('../configuration/LocalConfiguration.php');
require('../configuration/AdditionalConfiguration.php');

/**
 * Task for clearing TYPO3-caching-tables
 */
class ClearTypo3DatabaseCacheTask
{
        // Get all table names starting with 'cf_' and truncate them
        $database = $this->getDatabaseConnection();
        $tables = $database->admin_get_tables();
        foreach ($tables as $table) {
            $tableName = $table['Name'];
            if (substr($tableName, 0, 3) === 'cf_') {
                $database->exec_TRUNCATEquery($tableName);
            } elseif ($tableName === 'cache_treelist') {
                // cache_treelist is not implemented in the caching framework.
                // clear this table manually
                $database->exec_TRUNCATEquery('cache_treelist');
            }
        }
    }
}
