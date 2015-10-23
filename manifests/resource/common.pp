
define foreman_compute::resource($ensure, $options, $provider) {
  include foreman_compute
  file { "/etc/hammer/foreman_compute/$name.conf.sh":
    ensure  => file,
    content => template('foreman_compute/resource.sh.erb'),
    notify  => Exec["/etc/hammer/foreman_compute/$name.conf.sh"]
  }
  exec{"/etc/hammer/foreman_compute/$name.conf.sh":
    refreshonly  => true,
    command      => "bash '/etc/hammer/foreman_compute/$name.conf.sh'",
    environment  => 'HOME=/root',
    require      => Package['foreman-cli'],
  }
}
