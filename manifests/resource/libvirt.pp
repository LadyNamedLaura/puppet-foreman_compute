
define foreman_compute::resource::libvirt(
  $ensure = "present",
  $set_console_password = false,
  $url,
) {
  foreman_compute::resource::common{"$name":
    ensure => "$ensure",
    provider => "libvirt",
    options =>  {
      url => "$url",
      "set-console-password" => $set_console_password,
    }
  }
}
