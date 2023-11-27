# 1-install_a_package.pp

# Ensuring pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Installing Flask using pip3 with version 2.1.0
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  unless  => '/usr/bin/pip3 show Flask | grep Version | grep 2.1.0',
}

# Notify when Flask is installed
notify { 'Flask installed':
  require => Exec['install_flask'],
}
