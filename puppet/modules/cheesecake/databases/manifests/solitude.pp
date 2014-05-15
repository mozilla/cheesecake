# provision solitude database
class databases::solitude {
  mysql::db { 'payments_example_com':
    user     => 'payments',
    password => 'payments',
    host     => 'localhost',
    grant    => ['ALL'],
  }
}
