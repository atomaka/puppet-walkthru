case $::osfamily {
  'RedHat': {
    $service = 'ntpd'
    $conf    = 'ntp.conf.redhat'
  }
  'Debian': {
    $service = 'ntp'
    $conf    = 'ntp.conf.debian'
  }
}

notify { 'OS Information':
  message => "${::osfamily}: Setting service to ${service} and conf to ${conf}",
  before  => Package['ntp'],
}

package { 'ntp':
  ensure => present,
}

file { '/etc/ntp.conf':
  ensure  => present,
  require => Package['ntp'],
  source  => "/vagrant/files/${conf}",
}

service { $service:
  ensure    => running,
  enable    => true,
  subscribe => File['/etc/ntp.conf'],
}

