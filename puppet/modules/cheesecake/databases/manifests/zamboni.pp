# provision zamboni database
class databases::zamboni {
  mysql::db { 'marketplace_example_com_zamboni':
    user     => 'zamboni',
    password => 'zamboni',
    host     => 'localhost',
    grant    => ['ALL'],
  }
}
