#!/usr/bin/env bash
# seting up client SSH configuration file that
# connect to a server without typing a password.
file { '/etc/ssh/ssh_config':
  ensure => present,
  content => "# Managed by Puppet\n\nHost *\n    IdentityFile ~/.ssh/school\n    PasswordAuthentication no\n",
}
