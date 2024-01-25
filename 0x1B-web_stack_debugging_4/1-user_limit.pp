# Change the OS configuration
$target_user = 'holberton'

file { '/etc/security/limits.conf':
  ensure  => file,
  content => '#File is probably deleted',
}
