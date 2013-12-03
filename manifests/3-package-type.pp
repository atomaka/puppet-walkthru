# install vim
package { 'vim':
  ensure => present,
}

# remove alpine-pico
package { 'alpine-pico':
  ensure => absent,
}
