# create file simple file
file { '/tmp/test1.txt':
  ensure  => present,
  content => 'Hello',
}

# create file from existing file
file { '/tmp/test2.txt':
  ensure => present,
  source => '/vagrant/files/test2.txt',
}

# create file from template
$something = "Hello"
file { '/tmp/test3.txt':
  ensure  => present,
  content => template('/vagrant/templates/test3.txt.erb'),
}
