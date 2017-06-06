class wordpress::db{
class{'::mysql::server':
root_password => $::wordpress::var::root_password
}

class{'::mysql::client':
require => Class['::mysql::server'],
bindings_enable => true
}
notify {"$wordpress::var::root_password": }
#mysql::db { $wordpress::var::db_name:
#  
#  user     => $::wordpress::var::db_user,
#  password => $::wordpress::var::db_password,
#  host     => $::wordpress::var::db_host,
#  grant    => ['ALL']
#}


}
