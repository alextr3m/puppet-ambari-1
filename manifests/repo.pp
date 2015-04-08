# == Class: ambari::repo
#
# This class exists to install and manage yum repositories
# that contain official ambari packages
#
#
# === Parameters
#
# This class does not provide any parameters.
#
#
# === Examples
#
# This class may be imported by other classes to use its functionality:
#   class { 'ambari::repo': }
#
# It is not intended to be used directly by external resources like node
# definitions or other modules.
#
class ambari::repo {
  case $::osfamily {
    'RedHat': {
      yumrepo { 'ambari':
        descr    => 'ambari',
        baseurl  => 'http://cobbler200.athenahealth.com/LocalRepo/ambari/centos6/1.x/updates/1.7.0/',
        gpgcheck => 1,
        gpgkey   => 'http://cobbler200.athenahealth.com/LocalRepo/ambari/centos6/1.x/updates/1.7.0/RPM-GPG-KEY/RPM-GPG-KEY-Jenkins',
        enabled  => 1,
      }
    }
    default: {
      fail("\"${module_name}\" provides no repository information for OSfamily \"${::osfamily}\"")
    }
  }
}