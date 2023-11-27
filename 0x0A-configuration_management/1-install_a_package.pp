# Using Puppet to install flask from pip3

package { 'puppet-lint':
  ensure   => '4.2.3',
  provider => 'gem',
}
