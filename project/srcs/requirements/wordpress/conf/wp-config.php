<?php
// ** Database settings - You can get this info from your web host ** //
// define('DB_NAME', getenv('MARIADB_DB_NAME'));
// define('DB_USER', getenv('MARIADB_DB_USER'));
// define('DB_PASSWORD', getenv('MARIADB_DB_PASS'));
define('DB_HOST', '10.0.0.3:3306');
define('DB_NAME', 'wordpress_db');
define('DB_USER', 'kichkiro');
define('DB_PASSWORD', 'userpwd');
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
$table_prefix = 'wp_';

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
