# user management (for local users)
user { 'tm':
  ensure => present,
}

user { 'fowlks':
  ensure => absent,
}

