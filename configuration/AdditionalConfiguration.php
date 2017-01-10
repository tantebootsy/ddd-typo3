<?php
if (!defined('TYPO3_MODE')) {
    die('Access denied.');
}

$GLOBALS['TYPO3_CONF_VARS']['SYS']['binPath'] = '/usr/bin/';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['clearCacheSystem'] = true;

$GLOBALS['TYPO3_CONF_VARS']['BE']['installToolPassword'] = '$P$CigWQqvNV2OEC0u9hMI/FKit3s0SAP0';
$GLOBALS['TYPO3_CONF_VARS']['BE']['unzip_path'] = '/usr/bin/';
$GLOBALS['TYPO3_CONF_VARS']['BE']['warning_email_addr'] = 'info@t3t-7.lokal';
$GLOBALS['TYPO3_CONF_VARS']['BE']['lockSSL'] = '2';

$GLOBALS['TYPO3_CONF_VARS']['FE']['noPHPscriptInclude'] = true;

$GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path'] = '/Applications/MAMP/Library/bin/';
$GLOBALS['TYPO3_CONF_VARS']['GFX']['im_path_lzw'] = '/Applications/MAMP/Library/bin/';
$GLOBALS['TYPO3_CONF_VARS']['GFX']['im_version_5'] = 'im6';

/* Debug */
$GLOBALS['TYPO3_CONF_VARS']['SYS']['devIPmask'] = '*';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['displayErrors'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['sqlDebug'] = true;
$GLOBALS['TYPO3_CONF_VARS']['SYS']['enableDeprecationLog'] = 'file';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLog'] = 'file,'.PATH_site.'../storage/logs/system.log,0';
$GLOBALS['TYPO3_CONF_VARS']['SYS']['systemLogLevel'] = 0;
$GLOBALS['TYPO3_CONF_VARS']['BE']['debug'] = true;
$GLOBALS['TYPO3_CONF_VARS']['FE']['debug'] = true;

$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailFromAddress'] = 'typo3@michaelbakonyi.de';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['defaultMailFromName'] = 'T3-Template';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['transport'] = 'smtp';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['transport_smtp_server'] = 'sslout.de';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['transport_smtp_encrypt'] = 'ssl';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['transport_smtp_username'] = 'typo3@michaelbakonyi.de';
$GLOBALS['TYPO3_CONF_VARS']['MAIL']['transport_smtp_password'] = 'RmMYcQbjK4JhEbUiPUu$';

$GLOBALS['TYPO3_CONF_VARS']['DB'] = array(
    'database' => 't3tmpl',
    'host' => 'localhost',
    'username' => 'root',
    'password' => 'root',
    'port' => 3306,
);
?>
