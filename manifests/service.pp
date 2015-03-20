# == Class ambari::service
#
# This class is meant to be called from ambari.
# It ensure the service is running.
#
class ambari::service {

  service { $::ambari::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
