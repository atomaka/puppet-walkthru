package { 'ntp':
  ensure => present,
}

file { '/etc/ntp.conf':
  ensure  => present,
  require => Package['ntp'],
  source  => '/vagrant/files/ntp.conf.debian',
}

service { 'ntp':
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/ntp.conf'],
}

