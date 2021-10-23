<?php

define( 'DB_NAME', getenv('MYSQL_DATABASE') );
define( 'DB_USER', getenv('MYSQL_USER') );
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD') );
define( 'DB_HOST', 'mariadb' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'WP_ALLOW_REPAIR', true );

define( 'AUTH_KEY',         'qcesar' );
define( 'SECURE_AUTH_KEY',  'qcesar' );
define( 'LOGGED_IN_KEY',    'qcesar' );
define( 'NONCE_KEY',        'qcesar' );
define( 'AUTH_SALT',        'qcesar' );
define( 'SECURE_AUTH_SALT', 'qcesar' );
define( 'LOGGED_IN_SALT',   'qcesar' );
define( 'NONCE_SALT',       'qcesar' );

$table_prefix = 'wp_';
define( 'WP_DEBUG', true );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );
