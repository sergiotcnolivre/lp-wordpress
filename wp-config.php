<?php
/**
 * As configurações básicas do WordPress
 *
 * O script de criação wp-config.php usa esse arquivo durante a instalação.
 * Você não precisa usar o site, você pode copiar este arquivo
 * para "wp-config.php" e preencher os valores.
 *
 * Este arquivo contém as seguintes configurações:
 *
 * * Configurações do MySQL
 * * Chaves secretas
 * * Prefixo do banco de dados
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar estas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define( 'DB_NAME', 'gbr' );

/** Usuário do banco de dados MySQL */
define( 'DB_USER', 'root' );

/** Senha do banco de dados MySQL */
define( 'DB_PASSWORD', 'root' );

/** Nome do host do MySQL */
define( 'DB_HOST', 'localhost' );

/** Charset do banco de dados a ser usado na criação das tabelas. */
define( 'DB_CHARSET', 'utf8mb4' );

/** O tipo de Collate do banco de dados. Não altere isso se tiver dúvidas. */
define( 'DB_COLLATE', '' );

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las
 * usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org
 * secret-key service}
 * Você pode alterá-las a qualquer momento para invalidar quaisquer
 * cookies existentes. Isto irá forçar todos os
 * usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'el{iE+3j]iS!P`&^:/B%iAB?h/w?%7IQh@(O@q~1=CJ*{[=JH!_ 4/W|s+7<GG G' );
define( 'SECURE_AUTH_KEY',  'm?8_[fm|{6zeQ=~e0ma)U/lLQDBc`<ia7ehgTn} &,5i+M>*Z:7In,b9dg!SxgNN' );
define( 'LOGGED_IN_KEY',    'GU{H^!)Qlp!zIpD3i^TCn5t_BjBY,&ve^)yOLWe[9|[+NxEP<kV0|_I_TZL]EjM5' );
define( 'NONCE_KEY',        '%(jS[t0P-kw!6lD.Kgt@Qi0J]!z;-f7)K1T<l*eMdib`W}`RvZ=/y3[nUMR|6R}n' );
define( 'AUTH_SALT',        '|4IR@u]<8-Vhw}v+-/lx]20YRej*,?hqv1],Pg3ifsHtnBDz${S=+$R-[3b/+V0,' );
define( 'SECURE_AUTH_SALT', 'ZrCu Jx7jMfO~3LEAJ,]G@H|+YCFeaFw[-<rmE0O.E5AgiFd)D2Cr6{InbW+&A^y' );
define( 'LOGGED_IN_SALT',   'g;CFRYO$|Qj(B-wB*_-`qjiZrZ*DKttV#F<*RIsL:$TrV/vV>V2w7(a2}@tIpeHo' );
define( 'NONCE_SALT',       'b4o*e;@UMj}QOVh6LtQTPPVF3IJ6gkB&3li i)y@d$P$:/DeNy.<{&K(_E.HvE3O' );

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der
 * um prefixo único para cada um. Somente números, letras e sublinhados!
 */
$table_prefix = 'wp_';

/**
 * Para desenvolvedores: Modo de debug do WordPress.
 *
 * Altere isto para true para ativar a exibição de avisos
 * durante o desenvolvimento. É altamente recomendável que os
 * desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 *
 * Para informações sobre outras constantes que podem ser utilizadas
 * para depuração, visite o Codex.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Adicione valores personalizados entre esta linha até "Isto é tudo". */



/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Configura as variáveis e arquivos do WordPress. */
require_once ABSPATH . 'wp-settings.php';
