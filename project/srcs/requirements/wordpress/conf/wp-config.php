<?php
// ** Database settings - You can get this info from your web host ** //
define('DB_NAME', getenv('WORDPRESS_DB_NAME') ?: 'wordpress');
define('DB_USER', getenv('WORDPRESS_DB_USER') ?: 'root');
define('DB_PASSWORD', getenv('WORDPRESS_DB_PASSWORD') ?: 'my-secret-pw');
define('DB_HOST', getenv('WORDPRESS_DB_HOST') ?: 'mariadb:3306');
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
