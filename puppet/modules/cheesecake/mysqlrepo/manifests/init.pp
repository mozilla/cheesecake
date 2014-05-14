class mysqlrepo() {

  include base::yum::conf

  yumrepo { 'mysql-community-releases':
    baseurl        => 'http://repo.mysql.com/yum/mysql-community/el/6/$basearch/',
    descr          => 'Mysql Community Packages',
    enabled        => 1,
    priority       => 2,
    gpgcheck       => 0,
    failovermethod => priority,
    before         => [
        Class[mysql::server],
        Class['mysql::client']
    ]
  }

}
