# == Class: ambari
#
# Full description of class ambari here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class ambari (
  $package_name = $::ambari::params::package_name,
  $service_name = $::ambari::params::service_name,
) inherits ::ambari::params {

  # validate parameters here

  class { '::ambari::install': } ->
  class { '::ambari::config': } ~>
  class { '::ambari::service': } ->
  Class['::ambari']
}
