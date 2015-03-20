# == Class ambari::params
#
# This class is meant to be called from ambari.
# It sets variables according to platform.
#
class ambari::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'ambari'
      $service_name = 'ambari'
    }
    'RedHat', 'Amazon': {
      $package_name = 'ambari'
      $service_name = 'ambari'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
