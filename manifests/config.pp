# == Class: etcd::config
#
class etcd::config {
  file { '/etc/etcd.conf':
    ensure  => present,
    force   => true,
    content => template("${module_name}/etc/etcd.conf.erb"),
  }
}
