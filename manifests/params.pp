# == Class ambari::params
#
# This class is meant to be called from ambari.
# It sets variables according to platform.
#
class ambari::params {
  case $::osfamily {
    'RedHat', 'Amazon': {
      $agent_package_name = 'ambari-agent'
      $agent_service_name = 'ambari-agent'
      $server_package_name = 'ambari-server'
      $server_service_name = 'ambari-server'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
