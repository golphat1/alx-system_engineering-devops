#!/usr/bin/env bash
#config private key to
#refuse password for authentication
file { '/etc/ssh/ssh_config':
  ensure => present,
  content => "# Managed by Puppet\n\nHost *\n    IdentityFile ~/.ssh/school\n    PasswordAuthentication no\n",
}
