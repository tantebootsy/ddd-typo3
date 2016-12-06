<?php
if (!defined('TYPO3_MODE')) {
    die('Access denied.');
}

$GLOBALS['TYPO3_CONF_VARS']['SYS']['binPath'] = '/usr/bin/';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['sqlDebug'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['clearCacheSystem'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['enableDeprecationLog'] = 'file';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLog'] = 'file,'.PATH_site.'../storage/logs/system.log,0';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 0;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['exceptionalErrors'] = '28674';

$GLOBALS['TYPO3_CONF_VARS']['BE']['installToolPassword'] = '$P$CigWQqvNV2OEC0u9hMI/FKit3s0SAP0';
$GLOBALS['TYPO3_CONF_VARS']['BE']['unzip_path'] = '/usr/bin/';
$GLOBALS['TYPO3_CONF_VARS']['BE']['warning_email_addr'] = 'info@t3t-7.lokal';
$GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;

$GLOBALS['TYPO3_CONF_VARS']['FE']['noPHPscriptInclude'] = true;
$GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

/*
$GLOBALS['TYPO3_CONF_VARS']['MAIL'] = array(
    'defaultMailFromAddress' => 'info@t3t-7.lokal',
    'defaultMailFromName' => 'TYPO3-Template V7',
    'transport' => 'smtp',
    'transport_smtp_server' => 'TODO:INSERT',
    'transport_smtp_encrypt' => 'ssl',
    'transport_smtp_username' => 'server@t3t-7.lokal',
    'transport_smtp_password' => 'root'
);
*/

$GLOBALS['TYPO3_CONF_VARS']['DB'] = array(
    'database' => 't3_7',
    'host' => 'localhost',
    'username' => 'root',
    'password' => 'root',
    'port' => 3306,
);
?>
