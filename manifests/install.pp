# == Class ambari::install
#
# This class is called from ambari for install.
#
class ambari::install {

  package { $::ambari::package_name:
    ensure => present,
  }
}
