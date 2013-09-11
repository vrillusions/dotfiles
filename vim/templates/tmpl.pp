# == Class: example_class
#
# Template for a class. Only difference with a define is changing the top line
# Also make sure to no have a blank line between this doc block and first line
# of class.
#
# === Parameters
#
# [*param1*]
#   A parameter used for class. Required. (Avoid parameters with no defaults)
#
# [*param2*]
#   Another parameter. Default: 'UNDEF'
#
# === Requires
#
# * puppetlabs/stdlib >= 4.0
#
# === Examples
#
# If using hiera or some other ENC:
#   include 'example_class'
#
# If passing parameters when called:
#   class { 'example_class':
#     param1 => 'whatever',
#   }
#
# === License
#
# Not specified / All rights reserved, Your Name or Company, YYYY
# - or -
# Apache License, v2.0, see LICENSE for full disclosure
#
class example_class (
    $param1,
    $param2 = 'UNDEF',
  ) {
  case $::operatingsystem {
    centos: {
      $package_list = 'package 1'
    }
    debian: {
      $package_list = 'different-package'
    }
    default: {
      fail("Module ${module_name} does not support ${::operatingsystem}")
    }
  }

  $example_var = $::osfamily ? {
    redhat  => '0600',
    debian  => '0644',
    default => '0777',
  }

  # Example pattern for init.pp file
  # NOTE: install, config, and service should be treated as "private" classes
  class { 'example_class::install': } ->
  class { 'example_class::config': } ~>
  class { 'example_class::service': } ->
  Class['example_class']
}
