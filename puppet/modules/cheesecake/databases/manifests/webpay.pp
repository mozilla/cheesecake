# provision webpay database
class databases::webpay {
  mysql::db { 'marketplace_example_com_webpay':
    user     => 'webpay',
    password => 'webpay',
    host     => 'localhost',
    grant    => ['ALL'],
  }
}
